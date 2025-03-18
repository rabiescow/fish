# These are very common and useful
#
function llx --wraps ls --description "List contents of directory using long format"
    # ls -lh $argv
  exa -halgm@T --git --icons --time-style full-iso --sort type $argv
end
