# script to build docker fule under docker folder.
# Usage: ./build.sh
docker build -t zoneminder.master:latest . -f ./Dockerfile
docker tag zoneminder.master:latest homeserver.koken-consulting.com:5000/zoneminder.master:latest
docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD} homeserver.koken-consulting.com:5000
docker push homeserver.koken-consulting.com:5000/zoneminder.master:latest