#!/bin/bash
cd /home/ubuntu/tungnvan-docker-react
docker build -t tungnvan-docker-react .
docker run -p 80:80 --name tungnvan-docker-react tungnvan-docker-react