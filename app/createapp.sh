#!/bin/sh
PLATFORM=browser
if [ -x ${PLATFORM} ];
then
	echo PLATFORM not defined
	exit 1
fi
rm -rf wallet
cordova create wallet org.ndx.mobile.wallet "NDX Mobile Wallet" --template ../../html
cd wallet
rm -rf icons
rm -rf plugins
cp -a ../../icons icons
cp -a ../../plugins plugins
cordova platform add ${PLATFORM}
rm -rf platforms
cp -a ../../platforms platforms
cd ..
