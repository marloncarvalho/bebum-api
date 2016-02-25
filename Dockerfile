FROM alpine:3.1
MAINTAINER Marlon Silva Carvalho <marlon.carvalho@gmail.com>

ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base mysql mysql-dev libffi-dev
ENV RUBY_PACKAGES ruby ruby-io-console

# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    rm -rf /var/cache/apk/*

RUN gem install bundler restart

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

RUN mkdir /usr/app
WORKDIR /usr/app
ADD . /user/app

CMD restart bundle exec rackup -p 8080 /usr/app/config.ru -s webrick
EXPOSE 8080
