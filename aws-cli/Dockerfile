# Copyright 2017 Jonathan Spooner
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# https://github.com/eclipse/che-dockerfiles/blob/master/recipes/node/Dockerfile
# NODE
FROM eclipse/stack-base:debian
    
RUN sudo apt-get update && \
    sudo apt-get -y install build-essential libkrb5-dev gcc make ruby-full rubygems debian-keyring python2.7 apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    sudo gem install --no-rdoc --no-ri sass -v 3.4.22 && \
    sudo gem install --no-rdoc --no-ri compass && \
    sudo apt-get clean && \
    sudo apt-get -y autoremove && \
    sudo apt-get -y clean && \
    sudo rm -rf /var/lib/apt/lists/* 

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN wget -qO- https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN sudo apt update && sudo apt -y install nodejs docker-ce

EXPOSE 1337 3000 4200 5000 9000 8003
RUN sudo npm install --unsafe-perm -g gulp bower grunt grunt-cli yeoman-generator yo generator-angular generator-karma generator-webapp

# https://github.com/eclipse/che-dockerfiles/blob/master/recipes/ubuntu_python/gae_python3/Dockerfile
# PYTHON (needed for aws cli)
RUN sudo apt-get update -y && \
    sudo apt-get install --no-install-recommends -y -q build-essential python3 python3-dev python-pip git python3-pip && \
    sudo pip3 install -U pip && \
    sudo pip3 install virtualenv

# https://bitbucket.org/jonathan_spooner/dockerfiles/src/4856278e52a8c8a8e452224e00e33c1f6cdbf8d6/eclipse-che/aws-cli/Dockerfile?at=master&fileviewer=file-view-default
# PHANTOMJS
# FROM eclipse/ubuntu_python
WORKDIR /home/user
RUN wget -O phantomjs.tar.bz2 https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
  && tar xvjf phantomjs.tar.bz2

# AWS CLI
# needed for aws-cli help output
# see issue https://github.com/aws/aws-cli/issues/1957
RUN sudo apt-get update && sudo apt-get install -y groff

RUN pip install --upgrade --user awscli

ENV PATH=/home/user/.local/bin:/home/user/phantomjs-2.1.1-linux-x86_64/bin:$PATH

# zip
RUN sudo apt-get install zip

