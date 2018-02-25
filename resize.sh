#!/bin/bash
#FILES=./DSC*.JPG
#FILES=./*.jpg
FILES=./*.png

for f in $FILES
do
  convert "$f" -resize 120x120\> "$f.tmp"
  touch -r "$f" "$f.tmp"
  mv "$f.tmp" "$f"
done
