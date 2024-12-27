#!/bin/bash

file1=$1

if [ -f "$file1" ]; then
  echo "this file do done"
else
  echo "this file does not exsit please choice a different file!"
fi


read -p "do you want to encrypt or shred? " file2

echo "$file2" 

if [[ $file2 = shred ]]; then
  echo "hello"
  shred $file1
elif [[ $file2 = encrypt ]]; then
  
  zip --encrypt $file1.zip $file1
else
  echo "this is not an option $file2 please choice a different file"
fi
