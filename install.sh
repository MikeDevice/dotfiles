#!/usr/bin/env bash

files=(
  bashrc
  gitconfig
)

for file in ${files[*]}
do
  start_comment="dotfiles start"
  end_comment="dotfiles end"

  function get_line_number_with_comment () {
    local file=${1}
    local comment=${2}

    grep "# $comment" -n $file | cut -f 1 -d :
  }

  function remove_lines () {
    local file=${1}
    local start_line=${2}
    local end_line=${3}

    sed -i "$start_line, $end_line d" $file
  }

  function append_to_file () {
    local src_file=${1}
    local dest_file=${2}

    echo "# $start_comment" >> $dest_file
    cat $src_file >> $dest_file
    echo "# $end_comment" >> $dest_file
  }

  src_file=./$file
  dest_file=~/.$file

  if test ! -f $src_file; then
    echo "$src_file not exists"
    exit
  fi

  start_comment_line=$(get_line_number_with_comment $dest_file "$start_comment")
  end_comment_line=$(get_line_number_with_comment $dest_file "$end_comment")

  if [ ! -z "$start_comment_line" ] && [ ! -z "$end_comment_line" ]
  then
    remove_lines $dest_file $start_comment_line $end_comment_line
  fi

  append_to_file $src_file $dest_file
done
