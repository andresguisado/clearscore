#!/bin/bash
#@andres.guisado@aguisado.com

# Stopping container running called clearscore
echo "---> Stopping clearscore container"
docker stop $(docker ps --filter "name=clearscore" -q)

# Removing container stopped called clearscore
echo "---> Removing clearscore container"
docker rm $(docker ps --filter "name=clearscore" -q -a)

# Removing nginx image
echo "---> Removin nginx image
docker rmi $(docker images | grep "nginx" | awk {'print $3'})
