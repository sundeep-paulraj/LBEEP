# Dockerfile to build and run LBEEP application
# Version 1

# Pull the ubuntu image from the repository
FROM ubuntu:latest
USER root

MAINTAINER Sundeep
LABEL application="LBEEP" \
      version="1.0"

# Update image
RUN apt-get -y update

# Installing openjdk
RUN apt-get -y install default-jre \
                       apt-utils \
                       default-jdk

### Create a work directory
RUN mkdir /work-directory

### Copy contents to work directory
ADD . /work-directory

### Change executable permission for LBEEP
RUN chmod +x LBEEP

### create temp folder in work directory 
RUN cd /work-directory 
RUN mkdir temp
### assign read and write permission to temp folder
RUN chmod 766 temp
### run the program as per users wish 


### Testing
#ENTRYPOINT ["/bin/echo"]

#CMD ["hello, this is a test image and running the container from it"]
