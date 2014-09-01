FROM ubuntu:14.04

# /home/ubuntu will be owned by ubuntu
RUN useradd --create-home ubuntu

# /home/ubuntu/foo will be owned by root
RUN mkdir /home/ubuntu/foo

# This ADD will cause /home/ubuntu to change and be owned by root only
# when this Dockerfile is built in Docker Hub
ADD ./bar /home/ubuntu/foo/bar
