FROM rails_app:1.0

ADD Gemfile.lock /app
ADD Gemfile /app

RUN bundle install --without development test

ADD . /app

