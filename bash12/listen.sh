#!/bin/bash
read data
if [[ "$data" == "$(cat /home/bash12/data.txt)" ]]; then
	echo "flag{}"
fi