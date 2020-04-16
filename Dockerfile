FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install gnupg1 apt-transport-https dirmngr
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
RUN echo "deb https://ookla.bintray.com/debian bionic main" |  tee /etc/apt/sources.list.d/speedtest.list
RUN apt-get update
RUN apt-get install speedtest