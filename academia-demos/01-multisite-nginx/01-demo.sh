#!/bin/bash
WEB01=online
WEB02=barcelona
WEB03=madrid
apk update
apk add hugo sed

for i in 01 02 03; do
hugo new site $WEB$i
cd ~/$WEB$i
git init
git submodule add https://github.com/StefMa/hugo-fresh themes/hugo-fresh
rm config.toml
curl -O https://raw.githubusercontent.com/StefMa/hugo-fresh/master/exampleSite/config.yaml
sed  -i '/Manage/s/title.*/title: $WEB$i/' config.yaml 
hugo -D
cd ~
done


docker run --name academia -p 80:80 -p 81:81 -v /root/online/public:/usr/share/nginx/html/online:ro -v /root/barcelona/public:/usr/share/nginx/html/barcelona:ro -v /root/nginx.conf:/etc/nginx/nginx.conf:ro -v /root/barcelona.conf:/etc/nginx/conf.d/barcelona.conf:ro -v /root/default.conf:/etc/nginx/conf.d/default.conf:ro -d nginx
