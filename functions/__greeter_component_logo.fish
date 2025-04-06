function __greeter_component_logo
  __greeter_util_set greeter_logo_color
  __greeter_util_set greeter_logo_path /home/anon/Pictures/icons/arch-linux-svgrepo-com.svg
  
  set_color $greeter_logo_color
  echo -ens $greeter_logo_path
  set_color normal
end

