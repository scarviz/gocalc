#!/usr/bin/env bash

set -e

if [ ! -f make.bash ]; then
	echo 'make.bash must be run from $GOPATH/src/github.com/scarviz/gocalc'
	exit 1
fi

mkdir -p libs/armeabi-v7a src/go/calc
ANDROID_APP=$PWD

#(cd ../../../golang.org/x/mobile && ln -sf $PWD/app/*.java $ANDROID_APP/src/go)
#(cd ../../../golang.org/x/mobile && ln -sf $PWD/bind/java/Seq.java $ANDROID_APP/src/go)
(cd ../../../golang.org/x/mobile && cp -f $PWD/app/*.java $ANDROID_APP/src/go)
(cd ../../../golang.org/x/mobile && cp -f $PWD/bind/java/Seq.java $ANDROID_APP/src/go)

CGO_ENABLED=1 GOOS=android GOARCH=arm GOARM=7 \
	go build -ldflags="-shared" .
mv -f gocalc libs/armeabi-v7a/libgojni.so
