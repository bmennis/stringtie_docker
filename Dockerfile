FROM ubuntu:18.04


RUN \
  apt update && apt install -y wget && \
  wget -c http://ccb.jhu.edu/software/stringtie/dl/stringtie-1.3.6.tar.gz && \
  tar -zxvf stringtie-1.3.6.tar.gz && \
  cd stringtie-1.3.6 && \
  make && \
  cp stringtie /usr/local/bin
