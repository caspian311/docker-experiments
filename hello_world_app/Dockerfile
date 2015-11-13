FROM caspian311/rails_server:1.0

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

RUN bundle install --without development test

ADD . $APP_HOME

ENV RAILS_ENV production
RUN bundle exec rake db:drop db:create db:migrate db:seed

EXPOSE 3000
CMD ["bundle", "exec", "rails", "s"]
