function cinit --description "initialize c project, arg1: the name of project, arg2: the arguments for the compiler"
    if test (count $argv) -lt 2
        echo "Usage: cinit <project_name> <compiler_arguments>"
        return 1
    end
    if test -e "$argv[1]"
        echo "project name '$argv[1]' already exists!"
        return 1
    end

    set -l name $argv[1]
    set -l cmds $argv[2]
    set -l dir "$PWD/$name"
    set -l file "$dir/src/main.c"
    set -l output "$dir/bin/$name"
    set -l compile_commands "$dir/compile_commands.json"

    mkdir -p "$dir/src" "$dir/bin"

    jq -n \
        --arg dir "$dir" \
        --arg file "$file" \
        --arg output "$output" \
        --arg cmd "$cmds" \
        '[{"arguments": ($cmd | split(" ")), "directory": $dir, "file": $file, "output": $output}]' >$compile_commands

    set -l c_code '#include <stdio.h>

int
main() {
    printf("hello world!\\n");
    return 0;
}'

    printf "%s\n" "$c_code" | tee "$file"

    echo "successfully created project $name"
    tree "$dir"
end
