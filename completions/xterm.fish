# completion for xterm

complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +ah -d 'Never highlight the text cursor'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +ai -d 'Enable active icon support'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +aw -d 'Disallow auto wraparound'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +bc -d 'Turn off cursor blinking'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +bdc -d 'Enable the display of bold characters'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +cb -d 'Set the vt100 resource cutToBeginningOfLine to \'true\''
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +cjk_width -d 'Set the cjkWidth resource to \'false\''
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +cm -d 'Enable recognition of ANSI color-change escape sequences'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +cn -d 'Cut newlines in line-mode selections'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +cu -d 'Don\'t workaround the bug in more(1)'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +dc -d 'Disable dynamic color changing'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +fbb -d 'Don\'t ensure compatibility between normal and bold fonts bounding boxes'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +fbx -d 'Normal and bold fonts have VT100 line-drawing characters'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +hf -d 'Don\'t generate HP Function Key escape codes for function keys'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +hold -d 'Close xterm\'s window after the shell exits'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +ie -d 'Don\'t use pseudo-terminal\'s sense of the stty erase value'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +im -d 'Don\'t force insert mode'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +j -d 'Don\'t use jump scrolling'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +k8 -d 'Don\'t treat C1 control characters as printable'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +l -d 'Turn off logging'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +lc -d 'Turn off support for encodings according the locale setting'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +ls -d 'The shell in xterm\'s window will not be login shell'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +mb -d 'Don\'t ring bell if the user types near the end of line'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +mesg -d 'Allow write access to the terminal'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +mk_width -d 'Don\'t use builtin version for the wide-character calculation'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +nul -d 'Enable underlining'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +pc -d 'Disable PC style bold colors'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +pob -d 'Don\'t raise window on Control-G'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +rvc -d 'Enable characters with reverse attribute as color'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +rw -d 'Disable reverse-wraparound'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +s -d 'Turn off asynchronous scrolling'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +samename -d 'Send title/icon change requests always'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +sb -d 'Don\'t display scrollbar'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +sf -d 'Don\'t generate Sun Function Key escape codes for function keys'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +si -d 'Move the screen to the bottom on input'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +sk -d 'Don\'t move the screen to the bottom on key press while scrolling'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +sm -d 'Don\'t setup session manager callbacks'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +sp -d 'Don\'t assume Sun/PC keyboard'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +t -d 'VT102 mode'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +tb -d 'Don\'t display toolbar or menubar'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +u8 -d 'Don\'t use UTF-8'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +ulc -d 'Display characters with underline attribute as color'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +ut -d 'Write to the system utmp log file'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +vb -d 'Don\'t use visual bell insead of audio bell'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +wc -d 'Don\'t use wide characters'
complete -c xterm -n 'string match "+*" -- (commandline -ct)' -a +wf -d 'Don\'t wait the first time for the window to be mapped'

complete -c xterm -o version -d 'Print version number to the standard output'
complete -c xterm -o help -d 'Print out a verbose message describing the options'
complete -c xterm -o 123 -d 'Don\'t ignore the VT102 DECCOLM escape sequence'
complete -c xterm -o ah -d 'Always highlight the text cursor'
complete -c xterm -o ai -d 'Disable active icon support'
complete -c xterm -o aw -d 'Allow auto wraparound'
complete -c xterm -o bc -d 'Turn on cursor blinking'
complete -c xterm -o bdc -d 'Disable the display of bold characters'
complete -c xterm -o cb -d 'Set the vt100 resource cutToBeginningOfLine to \'false\''
complete -c xterm -o cc -d 'Set character class'
complete -c xterm -o cjk_width -d 'Set the cjkWidth resource to \'true\''
complete -c xterm -o cm -d 'Disable recognition of ANSI color-change escape sequences'
complete -c xterm -o cn -d 'Don\'t cut newlines in line-mode selections'
complete -c xterm -o cu -d 'Workaround for bug in more(1)'
complete -c xterm -o dc -d 'Enable dynamic color changing'
complete -c xterm -o fbb -d 'Ensure compatibility between normal and bold fonts bounding boxes'
complete -c xterm -o fbx -d 'Normal and bold fonts don\'t have VT100 line-drawing characters'
complete -c xterm -o hf -d 'Generate HP Function Key escape codes for function keys'
complete -c xterm -o hold -d 'Don\'t close xterm\'s window after the shell exits'
complete -c xterm -o ie -d 'Use pseudo-terminal\'s sense of the stty erase value'
complete -c xterm -o im -d 'Force insert mode'
complete -c xterm -o k8 -d 'Treat C1 control characters as printable'
complete -c xterm -o lc -d 'Turn on support for encodings according the locale setting'
complete -c xterm -o leftbar -d 'Force scrollbar to the left side'
complete -c xterm -o ls -d 'The shell in xterm\'s window will be login shell'
complete -c xterm -o mb -d 'Ring bell if the user types near the end of line'
complete -c xterm -o mesg -d 'Disallow write access to the terminal'
complete -c xterm -o mk_width -d 'Use builtin version for the wide-character calculation'
complete -c xterm -o nul -d 'Disable underlining'
complete -c xterm -o pc -d 'Enable PC style bold colors'
complete -c xterm -o pob -d 'Raise window on Control-G'
complete -c xterm -o rightbar -d 'Force scrollbar to the right side'
complete -c xterm -o rvc -d 'Disable characters with reverse attribute as color'
complete -c xterm -o rw -d 'Enable reverse-wraparound'
complete -c xterm -o samename -d 'Don\'t send title/icon change requests always'
complete -c xterm -o sb -d 'Display scrollbar'
complete -c xterm -o sf -d 'Generate Sun Function Key escape codes for function keys'
complete -c xterm -o si -d 'Don\'t move the screen to the bottom on input'
complete -c xterm -o sk -d 'Move the screen to the bottom on key press while scrolling'
complete -c xterm -o sm -d 'Setup session manager callbacks'
complete -c xterm -o sp -d 'Assume Sun/PC keyboard'
complete -c xterm -o tb -d 'Display toolbar or menubar'
complete -c xterm -o u8 -d 'Use UTF-8'
complete -c xterm -o ulc -d 'Don\'t display characters with underline attribute as color'
complete -c xterm -o ut -d 'Don\'t write to the system utmp log file'
complete -c xterm -o vb -d 'Use visual bell insead of audio bell'
complete -c xterm -o wc -d 'Use wide characters'
complete -c xterm -o wf -d 'Wait the first time for the window to be mapped'
complete -c xterm -o Sccn -d 'Use as input/output channel for an existing program'

complete -c xterm -s e -a "(__fish_complete_subcommand)" -x -d 'Run program in xterm'

complete -r -c xterm -o bcf -d 'Blinking cursor will be off for that many milliseconds'
complete -r -c xterm -o bcn -d 'Blinking cursor will be on for that many milliseconds'
complete -r -c xterm -o class -d 'Override xterm resource class'
complete -r -c xterm -o cr -d 'Color for the text cursor'
complete -r -c xterm -o en -xa "(__fish_print_encodings)" -d 'xterm encoding'
complete -r -c xterm -o fb -d 'Bold font'
complete -r -c xterm -o fa -d 'FreeType font pattern'
complete -r -c xterm -o fd -d 'FreeType double-width font pattern'
complete -r -c xterm -o fi -d 'Font for active icons'
complete -r -c xterm -o fs -d 'Font size for FreeType font'
complete -r -c xterm -o fw -d 'Font for displaying wide text'
complete -r -c xterm -o fwb -d 'Font for displaying bold wide text'
complete -r -c xterm -o fx -d 'Font for the preedit string in "OverTheSpot"'
complete -r -c xterm -o hc -d 'Color for highlighted text'
complete -r -c xterm -o into -d 'Embed xterm into window'
complete -r -c xterm -o kt -d 'Set keyboard type' -a "unknown default hp sco sun vt220"
complete -r -c xterm -o lcc -d 'File name for the encoding converter'
complete -r -c xterm -o lf -d 'Log filename'
complete -r -c xterm -o mc -d 'Maximum time in milliseconds between multi-click selections'
complete -r -c xterm -o ms -d 'Color for the pointer cursor'
complete -r -c xterm -o nb -d 'Distance from the right end for ringing the margin bell'
complete -r -c xterm -o sl -d 'Number of scrolled off lines'
complete -r -c xterm -o ti -d 'Terminal identification' -a "vt52 vt100 vt101 vt102 vt220"
complete -r -c xterm -o tm -d 'Terminal name for $TERM'
complete -r -c xterm -o ziconbeep -d 'zIconBeep percentage'

complete -r -c xterm -s b -d 'Size of the inner border'

complete -c xterm -s j -d 'Use jump scrolling'
complete -c xterm -s l -d 'Turn on logging'
complete -c xterm -s s -d 'Turn on asynchronous scrolling'
complete -c xterm -s t -d 'Tektronix mode'
complete -c xterm -s C -d 'This window should receive console output'
