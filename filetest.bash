#!/bin/bash

ls $1 &> /dev/null
if [ $? -ne 0 ]; then
echo "ls command failed to find match"
else
echo "ls command found matching file"
fi
