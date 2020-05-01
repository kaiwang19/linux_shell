#!/bin/bash

foo=bar
echo "Hello"
echo 'World'
echo "value is $foo"

foo=$(pwd)
echo "We are in $(pwd)"

cat <(ls)
cat <(ls) <(ls ..) 

