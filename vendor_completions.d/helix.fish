#!/usr/bin/env fish
# Fish completion script for Helix editor

complete -c helix -s h -l help -d "Prints help information"
complete -c helix -l tutor -d "Loads the tutorial"
complete -c helix -l health -xa "(__helix_langs_ops)" -d "Checks for errors"
complete -c helix -s g -l grammar -x -a "fetch build" -d "Fetch or build tree-sitter grammars"
complete -c helix -s v -o vv -o vvv -d "Increases logging verbosity"
complete -c helix -s V -l version -d "Prints version information"
complete -c helix -l vsplit -d "Splits all given files vertically"
complete -c helix -l hsplit -d "Splits all given files horizontally"
complete -c helix -s c -l config -r -d "Specifies a file to use for config"
complete -c helix -l log -r -d "Specifies a file to use for logging"
complete -c helix -s w -l working-dir -d "Specify initial working directory" -xa "(__fish_complete_directories)"

function __helix_langs_ops
    helix --health languages | tail -n '+2' | string replace -fr '^(\S+) .*' '$1'
end
