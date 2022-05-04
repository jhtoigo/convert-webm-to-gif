#!/bin/bash

#ffmpeg -y -i vai.webm -vf palettegen vai.png
#ffmpeg -y -i vai.webm -i vai.png -filter_complex paletteuse -r 10 vai.gif

FILES="./*.webm"
for f in $FILES
do
  echo "Convertendo video $f"
  ffmpeg -y -i "$f" -vf palettegen "$f".png
  ffmpeg -y -i "$f" -i "$f".png -filter_complex paletteuse -r 10 ./gifs/"$f".gif

done