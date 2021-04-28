#!/bin/bash

# Delete images from previous runs

# Run a base image
docker run -it --rm ubuntu

# Explain flags -i -t --rm
docker run -it --rm ubuntu
cat > myfile <<EOF
Hello!
EOF
ls -l myfile
cat myfile
exit

# Create a new container with the same image
docker run -it --rm ubuntu
ls -l myfile

# my file is gone because the container was deleted

# Run without --rm
docker run -it ubuntu
cat > myfile <<EOF
Hello!
EOF
ls -l myfile
cat myfile
exit

# Relaunch an existing container
docker ps -a | grep ubuntu
docker start -ai <container_name>
ls -l myfile
cat myfile
exit

# Remove container manually
docker rm <container_name>

# Build our own base image
#  1. Create Dockerfile
#  2. Build image
cd 01-ubuntu-with-tools
code Dockerfile
docker build . -t ubuntu-with-tools

# Run our image
docker run -it --rm ubuntu-with-tools

# Run our image with a command
docker run -it --rm ubuntu-with-tools ip addr

## Create a functional image
cd ../02-nginx-with-tools

# Create Dockerfile and build
code Dockerfile
docker build . -t nginx-with-tools

# Launch
docker run -it --rm nginx-with-tools

# Fix the error
code Dockerfile
docker build . -t nginx-with-tools

# Launch the fixed version
docker run -it --rm nginx-with-tools

# Why is it just sitting there?

# Terminate it and relaunch with -P
docker run -it --rm -P nginx-with-tools

# Access the app
http://localhost:<port>

# Terminate it and relaunch with a known port
docker run --rm -d -p 8080:80 nginx-with-tools

# Terminate the container
docker stop <container_name>
