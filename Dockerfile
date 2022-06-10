FROM ruby:2.7.5
RUN apt-get update -qq
RUN apt-get install -y nodejs default-libmysqlclient-dev
RUN mkdir /pt_11_1_0
WORKDIR /pt_11_1_0
ADD Gemfile /pt_11_1_0/Gemfile
ADD Gemfile.lock /pt_11_1_0/Gemfile.lock
RUN bundle install
