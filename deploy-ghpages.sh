#!/bin/bash

rm -rf out || exit 0;
mkdir out;

GH_REPO="@github.com/drupalweekly/drupalweekly.github.io.git"

FULL_REPO="https://$GH_TOKEN$GH_REPO"

cd out
git init
git config user.name "drupalweekly"
git config user.email "gabrielneutzling@gmail.com"
cp ../CNAME ./CNAME
cp ../index.html index.html
cp -rf ../assets assets

git add .
git commit -m "deployed to github pages"
git push --force --quiet $FULL_REPO master:gh-pages
