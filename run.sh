#!/bin/bash

docker build -t local/redis:4.0.14 --no-cache .
docker run -d --name redis_master -p 192.168.1.105:6379:6379 local/redis:4.0.14
