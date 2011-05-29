#!/bin/bash

IGNOREFILE='.hgignore'

if [[ -e $1 ]]
	then  IGNOREFILE=$1
fi

BINARY_FILES=`file * | grep ELF | cut -d":" -f1`

# This is naive. It'll pollute the ignore file eventually.
echo $BINARY_FILES >> $IGNOREFILE


