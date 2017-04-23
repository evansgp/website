#!/usr/bin/env sh

rm -rf dist/
mkdir dist/
cp index.html books_small.jpg dist/

aws s3 sync dist/ s3://gareth.id.au/ --acl public-read

rm -rf dist/
