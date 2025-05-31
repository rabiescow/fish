function extractall
    set -l files (ls -t | rg -i .zip)
    set files (string split0 $files)
    for file in $files
        echo "unzipping $file..."
        unzip $file
    end
end
