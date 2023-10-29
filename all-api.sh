#!/bin/bash

rm -rf ./*-api

for file in `find . -maxdepth 1 -name "*.dist.xml" -type f`; do
  echo $file
  /usr/bin/php ./phpDocumentor.phar -c $file
done