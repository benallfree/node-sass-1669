#!/bin/bash
SASS=./node_modules/.bin/node-sass 
SRC=./assets/sass/themes
DST=./build/css/themes
files=(cerulean cosmo cyborg darkly flatly journal lumen paper readable sandstone simplex slate spacelab superhero united yeti)
for i in "${files[@]}"
do
	$SASS $SRC/$i.scss $DST/$i.css &
done
wait