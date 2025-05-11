#
# These are very common and useful
#
function ll --wraps ls --description "List contents of directory using long format"
    # ls -lh $argv
    eza -halg@ --git --icons --time-style long-iso --sort modified $argv
end
