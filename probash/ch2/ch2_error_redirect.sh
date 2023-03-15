#!/bin/bash

printf '%s\n%v\n' OK? Oops! > FILE 2> ERRORFILE

printf '%s\n%v\n' OK? Oops! 2>/dev/null

printf '%s\n%v\n' OK? Oops! 2>&1 > FILE

