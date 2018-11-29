#!/bin/bash

SUT_URL="https://github.com/johnlight/test"
SUT_NAME="test"

if [[ -d $SUT_NAME ]]; then
	echo "sut has been already downloaded, cleaning, updating..."
	cd $SUT_NAME
	git reset --hard
	git clean -fd
	git pull
else
	echo "sut has not been downloaded..."
	git clone $SUT_URL
fi
