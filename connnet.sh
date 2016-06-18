#!/bin/sh

if connmanctl services | grep Wired > /dev/null; then
	network=wired
else
	network="$(connmanctl services | grep '\*.\(O\|R\)' | cut -c5- | sed -e 's/\(.*\)wifi.*/\1/')"
fi
echo "$network"
