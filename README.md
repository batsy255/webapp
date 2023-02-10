# webapp
Creating web hook to launch web app in docker container

Create the dockerfile and run the file using the following command.
$ docker build -t <image-name>

Now run the following command to start the docker commanda and start a http server.
$ docker run -p <host-port>:<container-port> <image-name>
