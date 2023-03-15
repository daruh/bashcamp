#!/bin/bash

test -f /etc/fstab ## true if a regular file
test -h /etc/rc.local ## true if a symbolic link
[ -x "$HOME/bin/hw" ] ## true if you can execute the file
[[ -s $HOME/bin/hw ]] ## true if the file exists and is not empty

# last command execution
# echo $? 