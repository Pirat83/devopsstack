#!/bin/bash

docker rm $(docker ps -a -q)
docker rmi $(docker images -q devopsstack* | awk "{print $3}")
docker volume ls -qf dangling=true | xargs -r docker volume rm


