#! /bin/bash
set -e

TAG=$1
for IMAGE_NAME in base selenium-base selenium-hub selenium-base-node selenium-node-firefox selenium-node-chrome selenium-node-htmlunit
do
   IMAGE=atanistra/$IMAGE_NAME
   docker build -t $IMAGE -f ${IMAGE_NAME}/Dockerfile .
   ID="$(docker images | grep $IMAGE | head -n 1 | awk '{print $3}')"
	docker tag "$ID" $IMAGE:${TAG}
done


