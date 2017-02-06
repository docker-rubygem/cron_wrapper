FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.9

RUN gem install cron_wrapper --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cron_wrapper"]
CMD ["--help"]
