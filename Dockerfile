#基础是jvm
FROM openjdk:8
LABEL maintainer="liquanchen9 <liquanchen9@sina.com>" app="tesseract-docker"
RUN apt-get install -y apt-transport-https \
&& echo deb https://notesalexp.org/tesseract-ocr/buster/ buster main >> /etc/apt/sources.list       \
&& apt-get update -oAcquire::AllowInsecureRepositories=true \
&& apt-get install -y notesalexp-keyring -oAcquire::AllowInsecureRepositories=true \
&& apt-get update \
&& apt-get  install -y tesseract-ocr

