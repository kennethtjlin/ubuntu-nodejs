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
#RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh
#fail 1
#RUN source ~/.profile
#fail 2
#RUN /bin/bash -c "source ~/.profile"
#RUN nvm install v10.13.0
#fail 3
#RUN . "$NVM_DIR/nvm.sh" && v10.13.0
#method 4
#RUN ["/bin/bash","-c","source ~/.profile"]
#method 5
#RUN ~/.profile
#RUN nvm install v10.13.0
#method 6
#RUN export PATH=$PATH:/root/.nvm
#RUN ["/bin/bash","-c","nvm install v10.13.0"]
#method 7
#RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | bash \
# && source ~/.profile \
# && nvm install v10.13.0
#method 8 
#ENV NVM_DIR /root/.nvm
#RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | bash \
# && source ~/.profile \
# && nvm install v10.13.0
#method 9
#RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | bash
#RUN bash -i -c "source ~/.profile";
#RUN ["/bin/bash","-c","source ~/.profile"]
#method 10
ENV NVM_DIR /root/.nvm
ENV NODE_VERSION v10.13.0
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | bash \
&& . $NVM_DIR/nvm.sh \
&& nvm install $NODE_VERSION

