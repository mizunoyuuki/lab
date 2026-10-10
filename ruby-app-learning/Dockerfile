FROM docker.io/library/ruby:4.0.7

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY config.ru ./

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-b", "tcp://0.0.0.0:3000", "config.ru"]
