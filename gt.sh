#!/bin/bash

i=1;
gt=1;

if [ $1 -lt 0 ]; then
	echo Syntax Error.
	exit 1
else
	for (( i=2; i<=$1; ++i)) ;
	do
		((gt=gt*i));	
	done
	echo $1!=$gt;
fi
exit 0
