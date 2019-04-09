#!/bin/bash

OS="$1"
if [ "$OS" == "" ]; then
  echo 'please set OS (by $1)';
  exit 1;
fi

echo "set OS: $OS"

F="$out/my_bashrc.sh"
echo "make file: $F"

# bashrc
mkdir -p $out
touch $F

rm -f $F
cat "$src/bashrc.common.sh" >> $F
cat "$src/bashrc.$OS.sh" >> $F

if [ -f "~/.bashrc" ]; then
  BF="$HOME/.bashrc";
else
  BF="$HOME/.bash_profile";
fi
echo "found bash confile: $BF"

is_source="`cat $BF | grep "source $F"`"
echo "found source in confile: $is_source\n skip"
if [ "$is_source" == "" ]; then
  echo "add source to: $BF"
  echo "" >> $BF;
  echo "source $F" >> $BF;
fi

echo '[ init_bashrc.sh fin ]'

