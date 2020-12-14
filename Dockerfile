# FROM ruby:2.6
FROM ruby:2.7
# you can also <key>=<value> <key>=<value> writes multiple labels
LABEL maintainer="jessejunjing@163.com"

# Allow apt to work with https-based sources
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
    apt-transport-https

# Ensure we install an up-to-date version of Node
# See https://github.com/yarnpkg/yar/issues/2888
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

# Ensure latest packages for Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | \
    tee /etc/apt/sources.list.d/yarn.list

# Install packages
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
    nodejs \
    yarn

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app

ENV BUNDLE_PATH /gems

# comment for aws, when local remember uncomment
# comment for nokogiri can not bundle install, on aws can not use mirrors.aliyun.com
# RUN bundle config 'mirror.https://rubygems.org' 'http://mirrors.aliyun.com/rubygems/'
# RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com

RUN bundle install 

COPY . /usr/src/app/

CMD [ "bin/rails", "s", "-b", "0.0.0.0"]

ENTRYPOINT [ "./docker-entrypoint.sh" ]