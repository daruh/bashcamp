#!/usr/bin/bash

read -sn1 -p "Continue (y/n)?" var
case ${var^} in
Y) ;;
N) printf "\n%s\n" "Good bye"
  ;;
esac