#!/usr/bin/bash

function sa() {
    pre=:
    post=:
    printf "$pre%s$post\n" "$@"

    # Parameter Expansion

    # $ var=
    # $ sa "${var:-default}"

    # $ var=
    # $ sa "${var-default}"

    defaultfile=$HOME/.bashrc
    ## parse options here
    filename=${filename:-"$defaultfile"}
}

echo 'read, Read a Line from an Input Stream'

printf "%s\n" ' First line \' ' Second line ' | {
read
 sa "$REPLY"
}

echo '-r, Read Backslashes Literally'

printf "%s\n" ' First line \' " Second line " | {
  read -r
  read line2
  sa "$REPLY" "$line2"
}

echo '-e, Get Input with the readline Library'

printf "%s\n" "first second third fourth fifth sixth" | {
 read a b c d
 sa "$a" "$b" "$c" "$d"
 }

 echo '-a, Read Words into an Array'

 printf "%s\n" "first second third fourth fifth sixth" | {
   read -a array
   sa "${array[0]}"
   sa "${array[5]}"
 }

 echo '-d DELIM, Read Until DELIM Instead of a Newline'

printf "%s\n" "first second third fourth fifth sixth" | {
 read -d ' nrh' a
 read -d 'nrh' b
 read -d 'rh' c
 read -d 'h' d
 sa "$a" "$b" "$c" "$d"
 }