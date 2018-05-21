#!/bin/bash

echo "Give me a new directory"
read dir

orig_dir=$(pwd)

[[ -d $dir ]] && echo $dir already exists, aborting && exit
mkdir $dir

cd $dir
pwd

touch file1
touch file2
touch file3

ls file?

echo "This is file1" > file1
echo "This is file2" > file2
echo "This is file3" >file3

cat file?

cd $orig_dir
echo "Goodbye My Friend"
rm -rf $dir
