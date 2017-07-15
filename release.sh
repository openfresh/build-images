#!/bin/sh

for image in `docker images | grep latest | grep openfresh | cut -f1 -d' '`
do
  docker tag $image:latest $image:latest
  docker push $image:latest
done
