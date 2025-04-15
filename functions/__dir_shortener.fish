function __dir_shortener
  set -l dir_string_length (string length --visible $PWD)
  set -l output ""
  if test $dir_string_length -gt 20
    set -l n 0
    set -l trimmed_input (string trim -l -c "/" $PWD)
    set -l folder_splits (string split "/" $trimmed_input)
    set -l split_count (count $folder_splits)
    
    for e in $folder_splits
      set -l first_letter (string sub --length 1 $e)
      set -l first_two (string sub --length 2 $e)
      if test $n -lt (math $split_count - 2)
        if test $first_letter = "."
          set output "$output/$first_two"
        else
          set output "$output/$first_letter"
        end
      else
        set output "$output/$e"
      end
      set n (math $n+1)
    end
  else
    set output $PWD
  end

  echo $output
end
