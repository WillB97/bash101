#!/bin/bash
if [ -z "$SSH_ORIGINAL_COMMAND" ]; then
	echo "This user cannot access an interactive session!"
else
	$SSH_ORIGINAL_COMMAND;
fi