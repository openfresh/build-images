#!/bin/sh

for line in `ls`
do
  if [ -d $line ]; then
    target=$line
    cd $target
    image=openfresh/$target
    docker build -t $image:latest .
    if [ $? -ne 0 ]; then
      echo "build $image is failed" 1>&2
      exit 1
    fi 
    echo "build $image is success"
    cd .. 
  fi
done
