#!/bin/bash
#Mahesh Kale

dir="$1" #shell script dir
dir1="$2" #version file dir


if [ $# -eq 0 ]; then # it will check for empty arguments
    echo "No arguments provided"
    exit 1
fi


if [ $# -eq 1 ]; then # it will check for two arguments
    echo "only one arguments provided, please pass two arguments"
    exit 1
fi

vernum=($(cat $dir1/version.txt | awk {'print $3'}))
echo $vernum #version number from the version file


for file in "$dir"/[0-9]*; do
    num="${file##*/}"      
    num="${num%%[^0-9]*}"   # Here its separate the number from the file extension.
    
   
    if (( $vernum < $num )); then
        echo "version $vernum  is less than $num"
        printf '%s\n' "$file"        
        sh $file
    fi
done


