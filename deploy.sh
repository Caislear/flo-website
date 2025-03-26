#!/bin/bash
cd /Users/ben/Documents/code/ghost-static-site-generator

node ./src/index.js --domain "http://localhost:3001" --url "https://designsbyflow.com"
cp -r ./static/ ~/Documents/code/flo-website/docs/
cd ~/Documents/code/flo-website
git add .
git commit -m "chore: site update $(date +%Y-%m-%d-%H:%M:%S)"
#git push
