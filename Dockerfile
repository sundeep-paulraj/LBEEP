# Dockerfile to build and run LBEEP application
# Version 0.2

# Pull the ubuntu image from the repository
FROM ubuntu:latest
USER root

MAINTAINER Sundeep
LABEL application="LBEEP" \
      version="1.0"

# Update image
RUN apt-get -y update \
    && install default-jre \
    apt-utils \
    default-jdk \
    && mkdir /work-directory

### Copy contents to work directory
COPY . /work-directory

### Change executable permission for LBEEP
RUN chmod +x LBEEP  \
    && cd /work-directory \
    && mkdir temp
    && chmod 766 temp