#!/bin/bash

RFD_NUMBER=$1
NEW_RFD_DIR=rfd/$RFD_NUMBER
TITLE=$2
NEW_RFD_FILE=$NEW_RFD_DIR/README.adoc
BRANCH_NAME=$RFD_NUMBER

git checkout -b $BRANCH_NAME

mkdir $NEW_RFD_DIR
cp prototypes/prototype.adoc $NEW_RFD_FILE
sed -i '' -e "s/<Number>/$RFD_NUMBER/g" $NEW_RFD_FILE
sed -i '' -e "s/<Title>/$TITLE/g" $NEW_RFD_FILE

git add $NEW_RFD_FILE
git commit -m "$RFD_NUMBER: Adding placeholder for RFD \"$TITLE\""
git push --set-upstream origin $BRANCH_NAME
