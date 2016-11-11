FROM ruby:2.2

ADD . .

RUN bundle install
RUN chmod +x bin/rails

EXPOSE 9000

ENTRYPOINT ["./docker-entrypoint.sh"]
