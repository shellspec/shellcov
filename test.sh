#!/bin/sh

set -eu

parse() {
  awk -v width="${1:-0}" -f ./parser.awk
}

for i in "$@"; do
  IFS= read -r line < "$1"
  line=${line%%"|"*} && width=${#line}
  cut -d '|' -f 2- "$1" | parse "$width" | diff -bu "$1" -
done
