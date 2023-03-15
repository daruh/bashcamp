#!/bin/bash

read dir
if [ -d $dir ] && cd "$dir"
then    
    echo "$PWD"
else
    echo invalid "$dir"
fi