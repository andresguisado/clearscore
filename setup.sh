#!/bin/bash
#@andres.guisado@aguisado.com

#Getting Path where we are
PWD=`pwd`

#Creating clearscore container, nginx running, listening on 8080 port of your machine and sharing a volume where is located the app's source code   
docker run --name clearscore -v $PWD/src:/usr/share/nginx/html:ro -d -p 8080:80 nginx
