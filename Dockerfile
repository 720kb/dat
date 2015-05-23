FROM debian
MAINTAINER Dario Andrei <wouldgo84@gmail.com>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl build-essential adduser
RUN curl -sL https://deb.nodesource.com/setup | bash - && apt-get install -y nodejs

RUN adduser dat

RUN npm install -g yo generator-hubot
ADD ./run/bootstrap.sh /opt/bootstrap.sh

CMD ["/bin/bash", "/opt/bootstrap.sh" ]
