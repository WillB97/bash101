#!/bin/bash
chal_list=$(find . -mindepth 1 -maxdepth 1 -type d | grep -vE '^\./\.' | sort -n -k1.7 ) # get alphabetical folder list
last_pass="bash0"

while read line; do
	cd $(echo "$chal_list" | sed -n '1p') # cd into each directory in order
	echo "$(echo "$chal_list" | sed -n '1p'): $last_pass: $line" | sed 's|^\./||' 1>&2
	chal_list=$(echo "$chal_list" | sed '1d') # strip first element from dir list
	chal_make $last_pass $line
	last_pass=${line##* } # last word of line
	cd ..
	if [[ -z "$chal_list" ]]; then
		exit 0
	fi
done < flags.json