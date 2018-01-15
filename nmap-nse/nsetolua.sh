#!/bin/bash

for script in $(ls)
do
	apple=`echo $script | cut -d '.' -f 1`
	mv $script ${apple}.lua
done
