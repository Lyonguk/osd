#!/bin/bash

for x in "$@"
do
y=$(echo "scale=4; 0.5*$x*$x"|bc)
echo "x=$x, y=$y"
done
