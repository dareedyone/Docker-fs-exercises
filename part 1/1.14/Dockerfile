FROM ruby:2.6.0
RUN bundle config --global frozen 1
COPY rails-example-project-master /usr/src/app
WORKDIR /usr/src/app
RUN bundle install
RUN apt update && apt -y install nodejs
RUN rails db:migrate
EXPOSE 3000
CMD rails s
