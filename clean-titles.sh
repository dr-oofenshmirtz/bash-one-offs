#!/bin/bash

prefix='[Evil_Genius]'

for folder in **/; do
  # echo $init
  foo=${folder#"$prefix"}
  # mv $init $foo
  mv "${folder}" "${foo}"
done
