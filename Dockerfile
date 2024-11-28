FROM ubuntu:22.04

ENV DEBIAN_FRONTED=noninteractive

RUN apt update && apt install python3 pip git openssh-server libmysqlclient-dev openssh-client pkg-config netcat mysql-client -y && python3 -m pip install Django==5.1 requests gunicorn mysqlclient
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata