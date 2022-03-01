#getting base image ubuntu
FROM ubuntu:latest

LABEL Roberto Aguilar<robertolorenzoaguilarith@gmail.com>

WORKDIR /root

RUN  apt-get -y update && apt-get install -y apt-utils unzip curl csvkit 

COPY covid_script.sh /root/covid_script.sh

ENTRYPOINT ["/bin/bash", "covid_script.sh"]
