#!/bin/bash

docker run --rm --privileged multiarch/qemu-user-static:register --reset
docker build -t rpi-raspbian-bazel .
docker cp `docker ps -l -q`:/bazel-src/bazel-bin/blaze blaze-armhf

#oracle-java8-jdk openjdk-8-jdk 
# sed -i 's/jessie/stretch/g' /etc/apt/sources.list && \
#   apt-get update && \
#   apt-get upgrade && \
#   apt-get dist-upgrade && \
