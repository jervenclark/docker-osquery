FROM ubuntu:bionic as build-env

MAINTAINER  Jerven Clark Chua <jervenclark@gmail.com>

RUN apt-get update && apt-get install -y wget tar
RUN wget https://pkg.osquery.io/linux/osquery-3.3.2_1.linux_x86_64.tar.gz
RUN tar -xvzf osquery-3.3.2_1.linux_x86_64.tar.gz -C /

ENTRYPOINT ["/usr/bin/osqueryi"]
