# These are very common and useful
function ll --wraps ls --description "List contents of directory using long format"
    # ls -lh $argv
    eza -halg@ --git --icons --git-repos --group-directories-first --classify \
        --time-style long-iso --sort name $argv
end
