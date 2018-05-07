FROM ruby:2.4
LABEL maintainer="Carlos Contreras"
RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends nodejs
COPY Gemfile* /docker_projects/portfolio/
WORKDIR /docker_projects/portfolio/
RUN bundle install
COPY . /docker_projects/portfolio/
CMD ["rails","s","-b","0.0.0.0"]
