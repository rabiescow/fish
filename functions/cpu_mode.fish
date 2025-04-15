function cpu_mode
  set -eU current_status
  set -eU cpu_status
  set -l current_status (cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)

  switch $argv[1]
  case "performance"
    if test $current_status = "performance"
      set cpu_status (echo "not changed, already $current_status")
    else
      set cpu_status (echo "changing mode to $argv[1]")
      echo $argv[1] | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
    end
  case "powersave"
    if test $current_status = "powersave"
      set cpu_status (echo "not changed, already $current_status")
    else
      set cpu_status (echo "changing mode to $argv[1]")
      echo $argv[1] | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
    end
  case "*"
    set cpu_status (echo "not a valid mode, try 'performance' or 'powersave' instead")
  end
  echo $cpu_status
  return
end
