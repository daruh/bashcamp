#!/bin/bash

echo $1 $2
case $1 in
    *"$2"*) true ;;
    *) false ;;
esac