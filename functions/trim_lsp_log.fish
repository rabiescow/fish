function trim_lsp_log --description "trim first x percent of lines"
    set -l log_file "$HOME/.local/state/nvim/lsp.log"
    set -l lines (wc -l $log_file | awk '{print $1}')
    set -l percent (string trim --right --chars=% $argv[1])
    set -l keep (echo "scale=2;1.00 - ($percent / 100.00)" | bc)
    set -l keep_lines (math --scale=0 --scale-mode=round (echo "scale=2;$lines * $keep" | bc))
    tail -n $keep_lines $log_file >$HOME/.local/state/nvim/tmp_lsp_log
    mv "$HOME/.local/state/nvim/lsp.log" "$HOME/.local/state/nvim/del_tmp_lsp"
    mv "$HOME/.local/state/nvim/tmp_lsp_log" "$HOME/.local/state/nvim/lsp.log"
    RM del_tmp.lsp
end
