#!/bin/sh

github_repository=$1
dockerhub_repository=$2
dockerhub_username=$DOCKER_USER
dockerhub_password=$DOCKER_PWD

git clone $github_repository
repository_name=$(basename $github_repository .git)
cd $repository_name

docker build -t $dockerhub_repository .

docker login --username $dockerhub_username --password $dockerhub_password

docker tag $dockerhub_repository $dockerhub_username/$dockerhub_repository

docker push $dockerhub_repository

cd ..
rm -rf $repository_name
