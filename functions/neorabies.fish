#!/bin/fish
function neorabies

  set -l uptime (uptime | sed 's/.*up \([0-9]*\) days,\s*\([0-9]*\):*\([0-9]*\).*/\1:\2:\3 (d:h:m)/')
  set -l os (cat /etc/os-release | head -n 1 | sed 's/NAME="\(.*\)"/\1/')
  set -l host (cat /etc/hostname)
  set -l kernel (uname -sr)
  set -l shell ($SHELL --version)
  set -l term ghostty
  set -l cpu (cat /proc/cpuinfo | grep "model name" | head -n1 | sed 's/model name\s*:\s\(.*\)/\1/')
  set -l gpu (inxi -G | grep renderer | sed 's/\s*renderer:\s\(.*\)\s(.*/\1/')

  set -l mem_tot (cat /proc/meminfo | grep MemTotal | sed 's/MemTotal:[ ]*\(.*\) kB/scale=2;\1\/1000000/' | bc)
  set -l mem_use (cat /proc/meminfo | grep Active | sed 's/Active:[ ]*\(.*\) kB/scale=2;\1\/1000000/' | bc)
  set -l mem_proc (string join '' 'scale=1;(' $mem_use '/' $mem_tot ')*100' | bc)
  set -l memory (string join '' $mem_use 'GiB / ' $mem_tot 'GiB (' $mem_proc ' %)')

  clear

  set_color normal
  kitty +kitten icat --align left --use-window-size 10,10,200,200 --place 200x200@3x1 ~/.config/fish/src/arch-girl-blonde.png

  echo -ens "              "
  set_color "#ededed" --bold
  echo -ens "anon"
  set_color normal
  set_color "#878787"
  echo -ens "@"
  echo $host
  set_color normal

  echo -ens "                 "
  set_color green
  echo "━━━━━━━━━━━━━━━━━━━━"
  set_color normal

  echo -ens "                 "
  set_color "#878787"
  echo -ens " "
  set_color blue --bold
  echo -ens "OS      "
  set_color normal
  set_color "#38d8c8"
  echo -ens " ➜ "
  set_color "#878787"
  echo $os

  echo -ens "                 "
  set_color "#878787"
  echo -ens "󰠦 "
  set_color blue --bold
  echo -ens "Host    "
  set_color normal
  set_color "#38d8c8"
  echo -ens " ➜ "
  set_color "#878787"
  echo $host

  echo -ens "                 "
  set_color "#878787"
  echo -ens "󰠰 "
  set_color blue --bold
  echo -ens "Kernel  "
  set_color normal
  set_color "#38d8c8"
  echo -ens " ➜ "
  set_color "#878787"
  echo $kernel

  echo -ens "                 "
  set_color "#878787"
  echo -ens "󱇻 "
  set_color blue --bold
  echo -ens "Uptime  "
  set_color normal
  set_color "#38d8c8"
  echo -ens " ➜ "
  set_color "#878787"
  echo $uptime

  echo -ens "                 "
  set_color "#878787"
  echo -ens " "
  set_color blue --bold
  echo -ens "Shell   "
  set_color normal
  set_color "#38d8c8"
  echo -ens " ➜ "
  set_color "#878787"
  echo $shell

  echo -ens "                 "
  set_color "#878787"
  echo -ens " "
  set_color blue --bold
  echo -ens "Terminal"
  set_color normal
  set_color "#38d8c8"
  echo -ens " ➜ "
  set_color "#878787"
  echo $term

  echo -ens "                 "
  set_color "#878787"
  echo -ens "󰻠 "
  set_color blue --bold
  echo -ens "CPU     "
  set_color normal
  set_color "#38d8c8"
  echo -ens " ➜ "
  set_color "#878787"
  echo $cpu

  echo -ens "                 "
  set_color "#878787"
  echo -ens "󰨇 "
  set_color blue --bold
  echo -ens "GPU     "
  set_color normal
  set_color "#38d8c8"
  echo -ens " ➜ "
  set_color "#878787"
  echo $gpu

  echo -ens "                 "
  set_color "#878787"
  echo -ens "󰘚 "
  set_color blue --bold
  echo -ens "Memory  "
  set_color normal
  set_color "#38d8c8"
  echo -ens " ➜ "
  set_color "#878787"
  echo $memory

end
