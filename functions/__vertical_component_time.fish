function __vertical_component_time
    __vertical_util_set vertical_time_format +%T
    __vertical_util_set vertical_time_color "#a6adc8" \
        --background "#181825"
    __vertical_util_set vertical_time_prefix " "
    __vertical_util_set vertical_time_prefix_color "#a6adc8" \
        --background "#181825"
    __vertical_util_set vertical_time_suffix " "
    __vertical_util_set vertical_time_suffix_color "#181825" \
        --background "#181825"
    set -l local_time (eval date $vertical_time_format)

    set_color normal
    set_color $vertical_time_prefix_color
    echo -ens $vertical_time_prefix
    set_color normal
    set_color $vertical_time_color
    echo -ens $local_time
    set_color normal
    set_color $vertical_time_suffix_color
    echo -ens $vertical_time_suffix
    set_color normal
end
