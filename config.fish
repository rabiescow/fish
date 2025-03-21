# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end
set -xgU HOME /home/anon
set -xgU fish_greeting ""
set -xgU BUN_INSTALL $HOME/.bun
# set -xg PATH $PATH:$BUN_INSTALL/bin

# System set -xgs
# set -xg LANG en_US.UTF-8
# set -xg LANGUAGE en_US.UTF-8
# set -xg LC_CTYPE C
# set -xg LC_NUMERIC en_US.UTF-8
# set -xg LC_TIME en_US.UTF-8
# set -xg LC_COLLATE en_US.UTF-8
# set -xg LC_MONETARY en_US.UTF-8
# set -xg LC_MESSAGES en_US.UTF-8
# set -xg LC_NAME en_US.UTF-8
# set -xg LC_ADDRESS en_US.UTF-8
# set -xg LC_ALL C
# set -xg LC_PAPER en_US.UTF-8
# set -xg LC_TELEPHONE en_US.UTF-8
# set -xg LC_MEASUREMENT en_US.UTF-8
# set -xg LC_IDENTIFICATION en_US.UTF-8

# Programming languages
set -xgU PROG_LANG $HOME/.lang
set -xgU ELIXIR_ERL_OPTIONS "+fnu"

# Environment set -xgs
# set -xg PATH $PATH:/usr/local/bin:/usr/bin:/local/bin
# set -xg HOME /home/anon
set -xgU TERM st-256color
set -xgU VISUAL nvim

# XDG set -xgs
set -xgU XDG_CONFIG_HOME $HOME/.config
set -xgU XDG_CONFIG_DIRS /etc/xdg
set -xgU XDG_DATA_HOME $HOME/.local/share
set -xgU XDG_STATE_HOME ~/.local/state
set -xgU XDG_CACHE_HOME ~/.cache

# FZF set -xgs
# Preview
# set -xg FZF_DEFAULT_OPTS "--preview 'bat {}'
#   --layout reverse
#   --border bold 
#   --border rounded 
#   --margin 3%"
set -xgU FZF_DEFAULT_OPTS '
  --preview "
  if file --mime-type {} | grep -qF image/; then
    imgcat --depth iterm2 --width $FZF_PREVIEW_COLUMNS --height $FZF_PREVIEW_LINES {}
  else
    bat --theme TwoDark --style numbers --color always --line-range :500 {}
  fi
  "
'

# Preview file content using bat (https://github.com/sharkdp/bat)
set -xgU FZF_CTRL_T_OPTS "
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'" 

# CTRL-Y to copy the command into clipboard using pbcopy
set -xgU FZF_CTRL_R_OPTS "
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"

# Print tree structure in the preview window
set -xgU FZF_ALT_C_OPTS "
  --walker-skip .git,node_modules,target
  --preview 'tree -C {}'"

# Fontpreview settings
set -xgU FONTPREVIEW_SEARCH_PROMPT "❯ "
set -xgU FONTPREVIEW_SIZE 1800x800
set -xgU FONTPREVIEW_POSITION "+120+120"
set -xgU FONTPREVIEW_FONT_SIZE 48
set -xgU FONTPREVIEW_BG_COLOR "#27445D"
set -xgU FONTPREVIEW_FG_COLOR "#EFE9D5"
set -xgU FONTPREVIEW_PREVIEW_TEXT 'No one shall be held in slavery or servitude;\nslavery and the slave trade shall\nbe prohibited in all their forms.\n\nfunc main() {\n fmt.Println("Hello World!")\n}'

# BAT config file
set -xgU BAT_CONFIG_PATH "~/.config/bat/bat.conf"
set -xgU BAT_CONFIG_DIR "~/.config/bat/"

# Hyprshot save location
set -xgU HYPRSHOT_DIR "~/Pictures/screenshots"

zoxide init fish | source

abbr --add ff "fastfetch -c /home/anon/.config/fastfetch/hypr.jsonc"
abbr --add ff1 "fastfetch -c /home/anon/.config/fastfetch/examples/8.jsonc"
abbr --add gh "history|rg"
abbr --add hx "helix"
abbr --add fzf "fzf --preview 'bat -A --color=auto {}'"

# fish_config theme choose enfocado


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/anon/.opam/opam-init/init.fish' && source '/home/anon/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration


set -xgU GPG_TTY $(tty)
