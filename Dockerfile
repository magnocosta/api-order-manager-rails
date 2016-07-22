FROM ruby:2.2.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN apt-get install -y unixodbc unixodbc-dev unixodbc-bin ruby-odbc
RUN apt-get install -y freetds-bin freetds-common freetds-dev
RUN mkdir /wilykit
WORKDIR /wilykit
ADD Gemfile /wilykit/Gemfile
ADD Gemfile.lock /wilykit/Gemfile.lock
RUN bundle install
ADD . /wilykit
EXPOSE 3000
RUN /wilykit/bin/rake db:migrate
CMD ["./bin/rails", "s", "-p", "3000", "-b", "0.0.0.0"]
