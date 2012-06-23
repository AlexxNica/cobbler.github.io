#!/bin/sh

cp -a {_plugins,_includes,_layouts} _dynamic/
cd _dynamic
rm -rf test.idx
jekyll
cd ..
rsync -a --delete _dynamic/_site/manuals/ manuals/
cp _dynamic/_site/search.json .
rm -rf _dynamic/{_plugins,_includes,_layouts,test.idx}