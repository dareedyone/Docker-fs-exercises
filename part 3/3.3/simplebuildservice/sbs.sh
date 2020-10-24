#!/bin/bash
if [ -z $1 ]  || [ -z $2 ] || [ -z $3 ] || [ -z $4 ]; then
    echo "USAGE: sudo docker run -v /var/run/docker.sock:/var/run/docker.sock dareedyone/simple-build-service <repo_url> <repo docker name> <dockerid> <dockerpassword>"
    exit
fi
repourl=$1
repodockername=$2
dockerid=$3
dockerpassword=$4
git clone $repourl
docker build -t "$dockerid/$repodockername" "./$2"
echo "$dockerpassword" | docker login -u $dockerid --password-stdin 
docker push "$dockerid/$repodockername"

