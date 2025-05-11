function __fish_test
  set root -l /
  set dr -l "/home/anon/.config/nvim/lua/plugins/themes/"
  while test -d $dr
    echo $dr
    set dr (path basedir $dr)
  end
end
