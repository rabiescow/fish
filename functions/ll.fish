#
# These are very common and useful
#
function ll --wraps ls --description "List contents of directory using long format"
    # ls -lh $argv
  eza -halgm@ --git --icons --time-style long-iso $argv
end
