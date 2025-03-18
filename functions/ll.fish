#
# These are very common and useful
#
function ll --wraps ls --description "List contents of directory using long format"
    # ls -lh $argv
  exa -halgm@ --git --icons --time-style full-iso $argv
end
