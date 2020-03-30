#基础是jvm
FROM openjdk:8
LABEL maintainer="liquanchen9 <liquanchen9@sina.com>" app="tesseract-docker"
RUN echo deb https://notesalexp.org/tesseract-ocr/buster/ buster main >> /etc/apt/sources.list       \
&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32       \
&& apt-get update \
&& apt-get  install  -y tesseract-ocr

