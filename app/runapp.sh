#!/bin/sh
PLATFORM=browser
if [ -x ${PLATFORM} ];
then
	echo PLATFORM not defined
	exit 1
fi
./updateapp.sh
cd wallet
cordova run ${PLATFORM}
cd ..
