FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
	software-properties-common \
	zlib1g-dev \
	libmysqlclient-dev \
	mysql-client-5.5 

RUN add-apt-repository ppa:brightbox/ruby-ng

RUN apt-get update && apt-get install -y \
	ruby2.2 \
	ruby2.2-dev
