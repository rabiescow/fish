#
# These are very common and useful
#
function lla --wraps ls --description "List contents of directory using long format"
    # ls -lh $argv
  exa -halgm@r --git --icons --time-style full-iso --reverse --sort modified $argv
end
