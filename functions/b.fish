function b --description "runs bat with theming"
    set -l BAT_STYLE "changes,grid,header-filename,header-filesize,numbers,snip"
    set -l BAT_THEME "Catppuccin Mocha"
    bat $argv[1]
end
