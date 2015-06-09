FROM ruby:2.2.2

#RUN useradd -m pappacena
#USER pappacena

RUN apt-get update
RUN apt-get -y install nodejs
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN bundle install
EXPOSE 4000
CMD bundle exec jekyll serve
