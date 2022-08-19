#!/bin/sh
for folder in **/; do
  echo $folder
  pwd
  cd "${folder}"
  pwd
  mv */* . > /dev/null
  echo "converting to png"
  convert *.jpg -set filename:f '%t' '%[filename:f].png' > /dev/null
  echo "converting to pdf"
  pdfname="${folder%?}.pdf"
  convert *.png -auto-orient "${pdfname}"

  pwd 
  cd ..
  pwd 
done

