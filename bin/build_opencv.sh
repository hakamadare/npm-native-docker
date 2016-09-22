#!/bin/bash

cd /opt/src &&\
  unzip opencv-2.4.13.zip -d /opt/src &&\
  cd /opt/src &&\
  cmake -D CMAKE_BUILD_TYPE=RELEASE -D BUILD_SHARED_LIBS=NO -D CMAKE_INSTALL_PREFIX=/opt/opencv opencv-2.4.13 &&\
  make &&\
  make install

