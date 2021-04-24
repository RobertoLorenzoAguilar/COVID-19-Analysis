FROM ubuntu

LABEL Roberto Aguilar<robertolorenzoaguilarith@gmail.com>

WORKDIR /

RUN  apt-get -y update && apt-get install -yq apt-utils unzip curl csvkit && 
     
ADD covid_script.sh / 

ENTRYPOINT ["/covid_script.sh"]

CMD ["bash"]
