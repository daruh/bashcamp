#!/bin/bash

[ -z "" ]
echo $?

str1=abc
str2=def

# less or equal
test "$str1" \< "$str2"
echo $?

# greater or equal
test "$str1" \> "$str2"
echo $?

string=whatever
[[ $string =~ h[aeiou] ]]
echo $?


[[ $string =~ h[sdfghjkl] ]]
echo $?