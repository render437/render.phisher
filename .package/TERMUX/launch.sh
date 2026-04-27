#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export RENDER.PHISHER_ROOT="/data/data/com.termux/files/usr/opt/render.phisher"
else
	export RENDER.PHISHER_ROOT="/usr/opt/render.phisher"
fi

cd $RENDER.PHISHER_ROOT
bash ./render.phisher.sh
