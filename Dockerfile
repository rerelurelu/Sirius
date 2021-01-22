FROM ruby:2.7

RUN apt-get update
RUN apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /sirius

COPY Gemfile Gemfile.lock /sirius/

RUN bundle install
