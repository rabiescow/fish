function __vertical_component_host
  __vertical_util_set vertical_host_color        667777
  __vertical_util_set vertical_host_prefix       @
  __vertical_util_set vertical_host_prefix_color bbcccc --bold
  __vertical_util_set vertical_host_ssh_only     false

  if not __vertical_util_is_ssh && [ $vertical_host_ssh_only = true ]
    return
  end

  set_color $vertical_host_prefix_color
  echo -ens $vertical_host_prefix
  set_color normal
  set_color $vertical_host_color
  echo -ens $hostname
  set_color normal
end
