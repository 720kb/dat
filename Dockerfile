FROM debian
MAINTAINER Dario Andrei <wouldgo84@gmail.com>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl build-essential
RUN curl -sL https://deb.nodesource.com/setup | bash - && apt-get install -y nodejs

RUN npm install -g yo generator-hubot

RUN mkdir -p /opt/dat && cd /opt/dat && yo hubot --owner="720kb Tech Support <tech@720kb.net>" --name="Dat" --description="Old cassettes never die" --adapter=slack --defaults
