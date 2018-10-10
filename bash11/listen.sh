#!/bin/bash
read data
if [[ "$data" == "$(cat /home/bash11/data.txt)" ]]; then
	echo "flag{}"
fi