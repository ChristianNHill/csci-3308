#!/bin/bash
#Andrew Rutherford

input=$1

[ -z "$input" ] && echo "Usage: grades.sh filename" && exit

IFS=$'\n'

for line in $(cat $input | sort -k3,3 -k2,2); do
  avg=$(echo $line | cut -d' ' -f 4,5,6 | sed 's/ /+/g' | sed 's/$/)\/3/g' | sed 's/^/(/g' | bc)
  name=$(echo $line | cut -d' ' -f 2,3 | sed 's/\([^ ]*\) *\([^ ]*\)/\2 \1/g' | sed 's/ /, /g')
  id=$(echo $line | cut -d' ' -f 1 | sed 's/^/[/g' | sed 's/$/]/g')
  echo "$avg $id $name"

done
