FROM ruby:3.1.3-alpine3.16

RUN apk update && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r0/glibc-2.35-r0.apk && \
    apk add --force-overwrite glibc-2.35-r0.apk && apk fix --force-overwrite alpine-baselayout-data && \
    apk add --no-cache tzdata curl-dev make g++ postgresql-dev git bash python3 nodejs yarn

RUN mkdir /app
WORKDIR /app

COPY ./Gemfile ./Gemfile.lock ./

RUN gem install bundler && \
    bundle install

RUN yarn install

COPY . /app

ENV LANG=C.UTF-8
