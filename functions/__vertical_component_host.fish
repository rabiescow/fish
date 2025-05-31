function __vertical_component_host
    set -l clat F5E0DC
    set -l clhost BAC2DE
    __vertical_util_set vertical_host_color $clhost --bold --italic
    __vertical_util_set vertical_host $hostname
    __vertical_util_set vertical_host_prefix @
    __vertical_util_set vertical_host_prefix_color $clat
    __vertical_util_set vertical_host_ssh_only false
    __vertical_util_set vertical_host_suffix ""
    __vertical_util_set vertical_host_suffix_color $clat

    if not __vertical_util_is_ssh && [ $vertical_host_ssh_only = true ]
        return
    end

    set_color normal
    set_color $vertical_host_prefix_color
    echo -ens $vertical_host_prefix
    set_color normal
    set_color $vertical_host_color
    echo -ens $vertical_host
    set_color normal
    set_color $vertical_host_suffix_color
    echo -ens $vertical_host_suffix
    set_color normal
end
