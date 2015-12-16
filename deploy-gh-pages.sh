#!/bin/bash

# Basically from https://medium.com/philosophy-logic/publishing-gh-pages-with-travis-ci-53a8270e87db

rm -rf out || exit 0;
mkdir out;

cd out
git init
git config user.name "Travis-CI"
git config user.email "gabrielneutzling@gmail.com"

cp ../CNAME ./CNAME
cp ../index.html index.html
cp -rf ../assets assets

git add .
git commit -m "Deploy to GitHub Pages"
git push --force --quiet "https://${GH_TOKEN}@github.com/drupalweekly/drupalweekly.github.io.git" master:gh-pages
