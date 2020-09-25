#!/bin/bash
WEB01=online
WEB02=barcelona
WEB03=madrid
ACTUAL=$(pwd)
echo $ACTUAL

apk update
apk add hugo sed

#for i in 01 02 03; do
#hugo new site WEB$i
for i in $WEB0{1,2,3}; do
hugo new site $i
cd $ACTUAL/$i
git init
git submodule add https://github.com/StefMa/hugo-fresh themes/hugo-fresh
rm config.toml
curl -O https://raw.githubusercontent.com/StefMa/hugo-fresh/master/exampleSite/config.yaml
sed  -i "/Manage/s/title.*/title: $i/" config.yaml
hugo -D
cd $ACTUAL
done


docker run --name academia -p 80:80 -p 81:81 -v $ACTUAL/$WEB01/public:/usr/share/nginx/html/online:ro -v $ACTUAL/$WEB02/public:/usr/share/nginx/html/barcelona:ro -v $ACTUAL/nginx.conf:/etc/nginx/nginx.conf:ro -v $ACTUAL/barcelona.conf:/etc/nginx/conf.d/barcelona.conf:ro -v $ACTUAL/default.conf:/etc/nginx/conf.d/default.conf:ro -d nginx
