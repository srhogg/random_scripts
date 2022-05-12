
echo "Number of top level folders"
read top

echo "Number of files"
read files

num=1

while [ $num -le $top ]; do
    folder="P000"$num
    mkdir $folder

    filenum=1
    
    subfolder=$folder/"Data"
    mkdir $subfolder

    while [ $filenum -le $files ]; do
        touch $subfolder/"DataFile000"$filenum
        filenum=$[$filenum + 1]
    done

    num=$[$num + 1]


done
