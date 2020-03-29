#!/usr/bin/env bash

folder_name=~/.scripts
files=(time.sh)

mkdir -p ${folder_name}

for file in ${files[*]}
do
  cp ./scripts/${file} ${folder_name}/${file}
done
