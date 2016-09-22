FROM node:4

COPY bin/* /opt/bin/
COPY src/* /opt/src/

RUN mkdir -p /opt/opencv /opt/node

RUN apt-get update

RUN apt-get -y install cmake unzip

RUN /opt/bin/build_opencv.sh

RUN PKG_CONFIG_PATH=/opt/opencv/lib/pkgconfig/ npm install -prefix=/opt/node opencv
