FROM ruby:2.7.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev libreadline-dev mariadb-client nodejs cron nginx python-pip libpython-dev imagemagick --fix-missing --no-install-recommends
RUN gem install bundler:2.1.4
ENV BUNDLER_VERSION 2.1.4

ENV RAILS_ROOT /var/www/runsql

RUN mkdir $RAILS_ROOT
WORKDIR $RAILS_ROOT

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

RUN bundle install
RUN bundle update rake
ADD . .

EXPOSE 3000

RUN chmod u+x ./docker-entrypoint.sh
CMD ./docker-entrypoint.sh