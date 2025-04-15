# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end
set -xg HOME /home/anon
set -xg fish_greeting ""
set -xg BUN_INSTALL $HOME/.bun

# Wine
set -xg WINEPREFIX $HOME/.wine
set -xg WINEARCH win32
set -xg WINEDLLOVERRIDES "d3d9,d3d11,d3d10core,dxgi=b"
set -xg MANGOHUD 0

# Programming languages
set -xg PROG_LANG $HOME/.lang
set -xg ELIXIR_ERL_OPTIONS "+fnu"
set -xg GOPATH $HOME/.local/lib/go
set -xg GOENV $HOME/.local/lib/go/env

# Environment set -xgs
set -xg VISUAL nvim

# XDG set -xgs
set -xg XDG_CONFIG_HOME $HOME/.config
set -xg XDG_CONFIG_DIRS /etc/xdg
set -xg XDG_DATA_HOME $HOME/.local/share
set -xg XDG_STATE_HOME ~/.local/state
set -xg XDG_CACHE_HOME ~/.cache

# FZF set -xgs
# Preview
set -xg FZF_DEFAULT_OPTS '
  --preview "
  if file --mime-type {} | grep -qF image/; then
    imgcat --depth iterm2 --width $FZF_PREVIEW_COLUMNS --height $FZF_PREVIEW_LINES {}
  else
    bat --theme TwoDark --style numbers --color always --line-range :500 {}
  fi
  "
'

# Preview file content using bat (https://github.com/sharkdp/bat)
set -xg FZF_CTRL_T_OPTS "
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'" 

# CTRL-Y to copy the command into clipboard using pbcopy
set -xg FZF_CTRL_R_OPTS "
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"

# Print tree structure in the preview window
set -xg FZF_ALT_C_OPTS "
  --walker-skip .git,node_modules,target
  --preview 'tree -C {}'"

# Fontpreview settings
set -xg FONTPREVIEW_SEARCH_PROMPT "❯ "
set -xg FONTPREVIEW_SIZE 1800x800
set -xg FONTPREVIEW_POSITION "+120+120"
set -xg FONTPREVIEW_FONT_SIZE 48
set -xg FONTPREVIEW_BG_COLOR "#27445D"
set -xg FONTPREVIEW_FG_COLOR "#EFE9D5"
set -xg FONTPREVIEW_PREVIEW_TEXT 'No one shall be held in slavery or servitude;\nslavery and the slave trade shall\nbe prohibited in all their forms.\n\nfunc main() {\n fmt.Println("Hello World!")\n}'

# BAT config file
set -xg BAT_CONFIG_PATH "~/.config/bat/bat.conf"
set -xg BAT_CONFIG_DIR "~/.config/bat/"

# Hyprshot save location
set -xg HYPRSHOT_DIR "$HOME/Pictures/screenshots"

zoxide init fish | source

abbr --add ff "fastfetch -c /home/anon/.config/fastfetch/hypr.jsonc"
abbr --add ff1 "fastfetch -c /home/anon/.config/fastfetch/examples/8.jsonc"
abbr --add gh "history|rg"
abbr --add hx "helix"
abbr --add fzf "fzf --preview 'bat -A --color=auto {}'"
abbr --add hl "rg --passthru"
abbr --add pm "sudo pacman"
abbr --add yay "yay --color=always"

# fish_config theme choose enfocado


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/anon/.opam/opam-init/init.fish' && source '/home/anon/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration

fish_config theme choose enfocado

set -xg GPG_TTY $(tty)
