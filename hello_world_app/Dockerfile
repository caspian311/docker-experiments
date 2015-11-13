FROM caspian311/rails_server:1.0

RUN mkdir /app

ADD Gemfile.lock /app
ADD Gemfile /app

RUN cd /app && bundle install --without development test

ADD . /app

