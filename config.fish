#
# RABIES COW SHELL CONFIG
#
set -xg HOME /home/anon
set -xg fish_greeting ""

# Wine
# set -xg WINEPREFIX $HOME/.wine
# set -xg WINEARCH win32
# set -xg WINEDLLOVERRIDES "d3d9,d3d11,d3d10core,dxgi=b"
# set -xg MANGOHUD 0

# Programming languages
set -xg PROG_LANG $HOME/.lang
set -xg ELIXIR_ERL_OPTIONS "+fnu"
set -xg GOPATH $HOME/.local/lib/go
set -xg GOENV $HOME/.local/lib/go/env
# Ocaml
test -r '/home/anon/.opam/opam-init/init.fish' && source '/home/anon/.opam/opam-init/init.fish' >/dev/null 2>/dev/null; or true

# Environment set -xgs
set -xg VISUAL nvim

# XDG set -xgs
set -xg XDG_CONFIG_HOME $HOME/.config
set -xg XDG_CONFIG_DIRS /etc/xdg
set -xg XDG_DATA_HOME $HOME/.local/share
set -xg XDG_STATE_HOME ~/.local/state
set -xg XDG_CACHE_HOME ~/.cache

# Vi mode enabled
set fish_key_bindings fish_vi_key_bindings

# Fontpreview settings
set -xg FONTPREVIEW_SEARCH_PROMPT "❯ "
set -xg FONTPREVIEW_SIZE 1300x800
set -xg FONTPREVIEW_POSITION "+120+120"
set -xg FONTPREVIEW_FONT_SIZE 48
set -xg FONTPREVIEW_BG_COLOR "#1e1e2e"
set -xg FONTPREVIEW_FG_COLOR "#cdcddd"
set -xg FONTPREVIEW_PREVIEW_TEXT 'No one shall be held in slavery or servitude;\nslavery and the slave trade shall\nbe prohibited in all their forms.\n\nfunc main() {\n fmt.Println("Hello World!")\n}'

# BAT config file
set -xg BAT_CONFIG_PATH "~/.config/bat/bat.conf"
set -xg BAT_CONFIG_DIR "~/.config/bat/"

# Hyprshot save location
set -xg HYPRSHOT_DIR "$HOME/Pictures/screenshots"

# zoxide init
zoxide init fish | source

set -xg GPG_TTY $(tty)

# bun
set --export BUN_INSTALL "$HOME/.bun"
