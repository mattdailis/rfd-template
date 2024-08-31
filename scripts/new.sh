#!/bin/bash

NEW_RFD_DIR=rfd/$1
TITLE=$2
NEW_RFD_FILE=$NEW_RFD_DIR/README.adoc

mkdir $NEW_RFD_DIR
cp prototypes/prototype.adoc $NEW_RFD_FILE
sed -i '' -e "s/__TITLE__/$2/g" $NEW_RFD_FILE

