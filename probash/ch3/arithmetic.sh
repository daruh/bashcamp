#!/bin/bash

test $(( a - 2 )) -ne 0
[ $a != 0 ]

y=yes
((y)) && echo $y || echo n