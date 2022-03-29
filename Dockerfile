FROM ruby:3.0.3

WORKDIR /var/app
COPY . .

RUN bundle install -j4

ENTRYPOINT [ "./entrypoint.sh" ]
