#!/bin/bash

RFD_NUMBER=$1
NEW_RFD_DIR=rfd/$RFD_NUMBER
TITLE=$2
NEW_RFD_FILE=$NEW_RFD_DIR/README.adoc

git checkout -b $RFD_NUMBER

mkdir $NEW_RFD_DIR
cp prototypes/prototype.adoc $NEW_RFD_FILE
sed -i '' -e "s/__TITLE__/$2/g" $NEW_RFD_FILE
