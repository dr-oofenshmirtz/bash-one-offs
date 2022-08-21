#!/bin/sh

# meant to condense into a single pdf

from_filetype=$1

for folder in **/; do
  echo $folder
  cd "${folder}"
  pwd
  echo "converting $from_filetype to pdf"
  pdfname="${folder%?}.pdf"
  convert "*.$from_filetype" -auto-orient "${pdfname}"
  cd ..
  pwd 
done

