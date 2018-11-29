From kennethtjlin/ubuntu-nodejs:v0
MAINTAINER kenneth

ENV DEBIAN_FRONTEND noninteractive

#install apt key
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
RUN echo "deb http://repo.mongodb.org/apt/ubuntu precise/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
RUN apt-get update

#install mongodb
RUN apt-get install -y mongodb-org

#create mongo directory
RUN mkdir /data/
RUN mkdir /data/db

#run mongo service
RUN mongod &
