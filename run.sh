#!/bin/bash

docker run -d \
  --name garm \
  -p 8080:80 \
  -v ./etc/garm:/etc/garm:rw \
  -v /var/run/docker.sock:/var/run/docker.sock:rw \
  ghcr.io/cloudbase/garm:v0.1.4
