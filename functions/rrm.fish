# ~/.config/fish/functions/rm.fish

# Ensure the real rm is accessible if needed (though we'll use /usr/bin/rm explicitly)
# set -g __original_rm (command -s rm)

# ~/.config/fish/functions/rm.fish

function rrm --description "Moves files to a temporary trash (~/.trash) instead of deleting, or hard deletes with --force."
    # --- Configuration ---
    set -l TRASH_DIR "$HOME/.trash"
    set -l DEFAULT_DAYS_TO_KEEP 14
    # ---------------------

    # Corrected options definition for argparse
    set -l options f/force h/help

    argparse $options -- $argv
    if test $status -ne 0
        # argparse likely printed an error (or use `return 1` to suppress default error)
        # For now, let argparse print its own error and then we can add custom handling if needed.
        return 1
    end

    if set -q _flag_help
        __fish_rm_replacement_usage
        return 0
    end

    # If --force or -f is used, call the system's rm directly
    if set -q _flag_force
        command /usr/bin/rm $argv
        return $status
    end

    # If no files/dirs are provided after flags are parsed
    if test (count $argv) -eq 0
        # command /usr/bin/rm # Let the original rm handle this
        echo "need to specify a file to remove"
        return $status
    end

    # Ensure the main trash directory exists
    if not test -d "$TRASH_DIR"
        mkdir -p "$TRASH_DIR"
        if test $status -ne 0
            echo "Error: Could not create trash directory at $TRASH_DIR" >&2
            return 1
        end
    end

    # Create a unique subdirectory for this delete operation
    set -l unique_timestamp_ms (date "+%s%3N") # Unixtime with milliseconds (GNU date)
    set -l random_suffix (random 1000 9999)
    set -l unique_subdir_name "$unique_timestamp_ms-$random_suffix"
    set -l current_trash_path "$TRASH_DIR/$unique_subdir_name"

    mkdir -p "$current_trash_path"
    if test $status -ne 0
        echo "Error: Could not create subdirectory in trash: $current_trash_path" >&2
        return 1
    end

    # Move each item to the unique trash subdirectory
    set -l had_error 0
    for item in $argv
        if test -e "$item" -o -L "$item"
            mv -- "$item" "$current_trash_path/"
            if test $status -ne 0
                echo "Warning: Could not move '$item' to trash." >&2
                set had_error 1
            end
        else
            echo "rm: cannot remove '$item': No such file or directory" >&2
            set had_error 1
        end
    end

    # Spawn the cleanup process in the background and disown it
    __clean_old_trash_items "$TRASH_DIR" "$DEFAULT_DAYS_TO_KEEP" &
    disown

    return $had_error
end

# Helper function for usage
function __fish_rm_replacement_usage
    echo "Usage: rm [OPTION]... [FILE]..."
    echo "Safely moves FILE(s) to $HOME/.trash, or removes them permanently with --force."
    echo ""
    echo "  -f, --force    bypass the trash and remove files permanently using /usr/bin/rm"
    echo "  -h, --help     display this help and exit"
    echo ""
    echo "Trashed files are moved to unique subdirectories in $HOME/.trash."
    echo "Old trashed items are automatically cleaned up."
end

# Helper function to clean up old items from the trash
# This will be run in the background
function __clean_old_trash_items --argument trash_dir --argument default_days
    # Allow overriding days to keep via environment variable
    set -l days_to_keep $default_days
    if set -q FISH_RM_TRASH_DAYS_TO_KEEP
        if string match -q -- '^[0-9]+$' "$FISH_RM_TRASH_DAYS_TO_KEEP"
            set days_to_keep $FISH_RM_TRASH_DAYS_TO_KEEP
        end
    end

    # Calculate the cutoff timestamp (seconds since epoch for easier comparison with `stat` or `date`)
    # We need unixtime in seconds for comparison with directory modification times or parsed names.
    # The subdirectory names have milliseconds, so we'll compare based on the second part.
    set -l cutoff_seconds_ago (math "$days_to_keep * 24 * 60 * 60")
    set -l current_time_seconds (date +%s)
    set -l cutoff_timestamp_seconds (math "$current_time_seconds - $cutoff_seconds_ago")

    # Check if trash_dir exists and we can list its contents
    if not test -d "$trash_dir"
        return 1
    end

    # Iterate through items in the trash directory
    # Using `find` is safer for unusual filenames and to get only directories
    find "$trash_dir" -mindepth 1 -maxdepth 1 -type d -print0 | while read -z -l subdir_path
        set -l subdir_name (basename "$subdir_path")

        # Attempt to parse the timestamp (in milliseconds) from the directory name
        # Format: <timestamp_ms>-<random_suffix>
        set -l parts (string split -m1 -- "-" "$subdir_name")
        if test (count $parts) -eq 2
            set -l dir_timestamp_ms $parts[1]

            # Check if it's a valid number
            if string match -q -- '^[0-9]+$' "$dir_timestamp_ms"
                # Convert directory timestamp from milliseconds to seconds
                set -l dir_timestamp_seconds (math -s0 "$dir_timestamp_ms / 1000") # integer division

                if test "$dir_timestamp_seconds" -lt "$cutoff_timestamp_seconds"
                    echo "DEBUG: Deleting old trash item: $subdir_path (timestamp: $dir_timestamp_seconds, cutoff: $cutoff_timestamp_seconds)" >&2
                    # command /usr/bin/rm -rf -- "$subdir_path"
                else
                    echo "DEBUG: Keeping trash item: $subdir_path (timestamp: $dir_timestamp_seconds, cutoff: $cutoff_timestamp_seconds)" >&2
                end
            else
                # echo "DEBUG: Subdirectory name does not start with a valid timestamp: $subdir_name" >&2
            end
        else
            echo "DEBUG: Subdirectory name format not recognized: $subdir_name" >&2
        end
    end
end
