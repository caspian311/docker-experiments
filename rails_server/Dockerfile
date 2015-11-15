FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
	software-properties-common \
	make \
	patch \
	zlib1g-dev \
	libxslt-dev \
	libxml2-dev \
	liblzma-dev \
	zlib1g-dev \
	libmysqlclient-dev \
	mysql-client-5.5 

RUN add-apt-repository ppa:brightbox/ruby-ng

RUN apt-get update && apt-get install -y \
	ruby2.2 \
	ruby2.2-dev

RUN gem install bundler --no-rdoc --no-ri

EXPOSE 3000
CMD bundle exec unicorn -c config/unicorn.rb

