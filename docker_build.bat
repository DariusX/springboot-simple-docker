docker container rm simple-docker -f
docker image rm simple-docker -f
docker build  D:\git\springboot-simple-docker -t simple-docker
docker run  --name simple-docker -it --publish 8080:8080 simple-docker 