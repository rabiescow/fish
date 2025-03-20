function __vertical_component_host
  __vertical_util_set vertical_host_color        yellow --bold --italic
  __vertical_util_set vertical_host_prefix       @
  __vertical_util_set vertical_host_prefix_color yellow --bold
  __vertical_util_set vertical_host_ssh_only     false

  if not __vertical_util_is_ssh && [ $vertical_host_ssh_only = false ]
    return
  end

  set_color $vertical_host_prefix_color
  echo -ens $vertical_host_prefix
  set_color $vertical_host_color
  echo -ens $hostname
  set_color normal
end
