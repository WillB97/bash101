#! /bin/bash
while true; do
	val=$(shuf -i $1-$2 -n 1)
	if [[ "$val" -ne "1033" ]]; then
		echo $val
		exit 0
	fi
done