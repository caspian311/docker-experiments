FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
	ruby2.2 \
	ruby2.2-dev \
	zlib1g-dev \
	libmysqlclient-dev \
	mysql-client-5.5 
	
ADD Gemfile.lock /app
ADD Gemfile /app

RUN bundle install --without development test

ADD . /app
