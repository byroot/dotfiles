#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for file in `ls $DIR | grep -v setup.sh`; do
  cp "$DIR/$file" "$HOME/.$file"
done
