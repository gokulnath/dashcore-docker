FROM ubuntu:16.04
MAINTAINER kp <dockerkp@gmail.com>

WORKDIR /root
RUN apt update
RUN apt-get install -y wget
RUN wget https://www.dash.org/binaries/dashcore-0.12.2.1-linux64.tar.gz
RUN tar -zvxf dashcore-0.12.2.1-linux64.tar.gz
RUN mv dashcore-0.12.2 dashcore
RUN cp dashcore/bin/* /usr/local/bin

VOLUME ["/opt/dashcore"]

EXPOSE 9332

CMD ["dashd", "--conf=/opt/dashcore/dash.conf", "--printtoconsole"]
