function __vertical_component_vi_mode
    __vertical_util_set vertical_vi_mode_color "#94e2d5" \
        --bold --background "#181825"
    __vertical_util_set vertical_vi_mode_prefix ""
    __vertical_util_set vertical_vi_mode_prefix_color "#181825" \
        --bold
    __vertical_util_set vertical_vi_mode_icon ""
    __vertical_util_set vertical_vi_mode_icon_color "#94e2d5" \
        --background "#181825"
    __vertical_util_set vertical_vi_mode_sym_insert "󰰄 "
    __vertical_util_set vertical_vi_mode_sym_insert_color "#a6e3a1" \
        --bold --background "#181825"
    __vertical_util_set vertical_vi_mode_sym_normal "󰰓 "
    __vertical_util_set vertical_vi_mode_sym_normal_color "#89b4fa" \
        --bold --background "#181825"
    __vertical_util_set vertical_vi_mode_sym_replace_one "󰰟 "
    __vertical_util_set vertical_vi_mode_sym_replace_color "#fab387" \
        --bold --background "#181825"
    __vertical_util_set vertical_vi_mode_sym_visual "󰰫 "
    __vertical_util_set vertical_vi_mode_sym_visual_color "#cba6f7" \
        --bold --background "#181825"
    __vertical_util_set vertical_vi_mode_suffix ""
    __vertical_util_set vertical_vi_mode_suffix_color "#181825" \
        --bold --background "#181825"

    if [ "$fish_key_bindings" != fish_vi_key_bindings \
            -a "$fish_key_bindings" != fish_hybrid_key_bindings ]
        return
    end

    set_color $vertical_vi_mode_prefix_color
    echo -ens $vertical_vi_mode_prefix
    set_color normal
    set_color $vertical_vi_mode_icon_color
    echo -ens $vertical_vi_mode_icon
    set_color normal
    # set_color $vertical_vi_mode_color
    switch $fish_bind_mode
        case insert

            set_color $vertical_vi_mode_sym_insert_color
            echo -ens $vertical_vi_mode_sym_insert
        case default

            set_color $vertical_vi_mode_sym_normal_color
            echo -ens $vertical_vi_mode_sym_normal
        case replace_one

            set_color $vertical_vi_mode_sym_replace_color
            echo -ens $vertical_vi_mode_sym_replace_one
        case visual

            set_color $vertical_vi_mode_sym_visual_color
            echo -ens $vertical_vi_mode_sym_visual
    end
    set_color normal
    set_color $vertical_vi_mode_suffix_color
    echo -ens $vertical_vi_mode_suffix
    set_color normal
end
