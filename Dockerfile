From kennethtjlin/ubuntu-nodejs:latest
MAINTAINER kenneth

#ENV DEBIAN_FRONTEND noninteractive

#install environment
#RUN apt-get update
#RUN apt-get install -y python-software-properties
#RUN apt-get install -y curl

#install build environment
#RUN apt-get install -y build-essential libssl-dev

#install NVM
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh
#fail 1
#RUN source ~/.profile
#fail 2
#RUN /bin/bash -c "source ~/.profile"
#RUN nvm install v10.13.0
#method 3
RUN . "$NVM_DIR/nvm.sh" && v10.13.0
