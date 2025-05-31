function ff --description "runs fzf with bat preview mode"
    set -l FZF_DEFAULT_OPTS "--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8,fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC,marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8,selected-bg:#45475A,border:#313244,label:#CDD6F4"
    fzf $FZF_DEFAULT_OPTS --preview="bat --color always --theme 'Catppuccin Mocha' --style numbers {}"
end
