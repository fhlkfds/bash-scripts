#!/bin/bash


# find the biggest file/folder by GB then sort then give the top 10
file="du -am --block-size=G  / 2>/dev/null | sort -n -r | head -n 10"


echo "This are the 10 biggest folder/file on your system: "

eval "$file"
