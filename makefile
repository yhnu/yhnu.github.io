hugo && grep -rl '".*/image' public | xargs sed -i 's;".*/image;"image;g' && rm -rf .qshell/quload && ./qiniu/qshell.exe qupload sync.conf -L
