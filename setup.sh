#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for file in `ls files/ | grep -v setup.sh`; do
  rm -rf "$HOME/.$file"
  cp -vR "files/$file" "$HOME/.$file"
done
