FROM centos

RUN yum update -y

RUN yum install wget bzip2 unzip make gcc gcc-c++ -y

RUN cd /tmp && wget https://nodejs.org/dist/v0.12.7/node-v0.12.7-linux-x64.tar.gz

RUN cd /tmp && tar xzvf node-v0.12.7-linux-x64.tar.gz

RUN mv /tmp/node-v0.12.7-linux-x64 /opt/node

RUN ln -s /opt/node/bin/node /bin/node && ln -s /opt/node/bin/npm /bin/npm

RUN npm install mimosa -g
