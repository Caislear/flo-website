#!/bin/bash
cd ./ghost-static-site-generator

#ensure yarn packages are installed for gssg
yarn

node ./src/index.js --domain "http://localhost:3001" --url "https://designsbyflow.com"
cp -r  ./static/ ../docs
cd ..
git add .
git commit -m "chore: site update $(date +%Y-%m-%d-%H:%M:%S)"
git push
