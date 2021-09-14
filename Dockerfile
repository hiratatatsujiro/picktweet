FROM ruby:2.6.5

RUN apt-get update -qq && \
  apt-get install -y build-essential \
  nodejs \
  mariadb-server \
  mariadb-client

WORKDIR /picktweet

COPY Gemfile /picktweet/Gemfile
COPY Gemfile.lock /picktweet/Gemfile.lock

RUN gem install bundler
RUN bundle install

RUN mkdir -p tmp/sockets