function __vertical_component_hg_branch
    __vertical_util_set vertical_hg_branch_color "#f2cdcd" \
        --background "#181825"
    __vertical_util_set vertical_hg_branch_prefix "  "
    __vertical_util_set vertical_hg_branch_prefix_color "#b4befe" \
        --bold --background "#181825"
    __vertical_util_set vertical_hg_branch_icon ""
    __vertical_util_set vertical_hg_branch_icon_color "#181825"

    if not __vertical_util_is_hg
        return
    end

    set -l branch (hg summary | rg branch | sed 's/^branch: \(.*\)$/\1/')
    set_color normal
    set_color $vertical_hg_branch_prefix_color
    echo -ens $vertical_hg_branch_prefix
    set_color normal
    set_color $vertical_hg_branch_icon_color
    echo -ens $vertical_hg_branch_icon
    set_color normal
    set_color $vertical_hg_branch_color
    echo -ens $branch
    set_color normal
end
