function rm --description "Remove files but move them to .trash \
  you can supply the command with multiple files seprated by space"

    # check if we provided any files
    if test -z "$argv[1]"
        echo "must provide file to remove"
        return
    end

    # set up helper variable to check if all files are existing
    set -l non_existing_files boolean

    # check if all provided files exists
    for file in $argv
        if test ! -e $file
            echo "File doesn't exist, aborting removal: $file"
            set non_existing_files true
        end
    end

    # abort if there are files that doesn't exist
    if test non_existing_files
        return
    end

    # move to trash
    for file in $argv
        echo (realpath $file) >>~/.trash/.restore
        mv $file ~/.trash
    end
end
