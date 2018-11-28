From kennethtjlin/ubuntu-nodejs:latest
MAINTAINER kenneth

ENV DEBIAN_FRONTEND noninteractive

#install environment
RUN apt-get update
RUN apt-get install -y python-software-properties
RUN apt-get install -y curl

#install build environment
RUN apt-get install -y build-essential libssl-dev

#install NVM
ENV NVM_DIR /root/.nvm
ENV NODE_VERSION v10.13.0
ENV NODE_PATH $NVM_DIR/versions/$NODE_VERSION/bin
ENV PATH $NODE_PATH:$PATH

RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | bash \
&& . $NVM_DIR/nvm.sh \
&& nvm install $NODE_VERSION

#install MongoDB
