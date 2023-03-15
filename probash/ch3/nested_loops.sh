#!/usr/bin/env bash

for n in a b c d e
 do
    while true
     do
        if [ $RANDOM -gt 2000 ]
         then
            printf .
            break 2 #break out of both while loops
        elif [ $RANDOM -lt 1000 ]
         then
            printf '"'
            break #break out of both while loops
        fi
    done
done

echo