#!/bin/bash

# single use vars for legibility
from_filetype=$1
to_filetype=$2

#convert 
echo "converting $from_filetype to $to_filetype in directories one level deep"
for folder in **/; do
  cd $folder
  for i in "*.$from_filetype" ; do
    convert "$i" "${i%.*}.$to_filetype" ;
  done
  cd ..
done
