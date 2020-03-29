#!/usr/bin/env bash

files=(time.sh)

mkdir -p ~/.scripts

for file in ${files[*]}
do
  cp ./scripts/${file} ~/.scripts/${file}
done
