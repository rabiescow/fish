function ff --description "run fzf smarter"
    set -l options h/help c
    argparse -n dirs --max-args=1 $options -- $argv
    or return

    if set -q _flag_help
        __fish_print_help ff
        return 0
    end

    if set -q _flag_c
        set -e -g path
        return 0
    end

    fzf --preview="bat --theme Coldark-Dark --color always {}" $argv[1]
end
