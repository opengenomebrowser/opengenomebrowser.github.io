# Create a github-pages container from a Ruby Alpine image
# Choose the ruby version according to https://pages.github.com/versions/
FROM ruby:2.7-alpine3.15

# Add Jekyll dependencies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Install github-pages
RUN gem update bundler && gem install bundler webrick github-pages
# RUN gem install octokit -v 4.25.0

# Usage: PODMAN
# podman build --tag gh-pages .
# podman run -it --rm \
#     --volume="$PWD:/srv/jekyll:Z" -w /srv/jekyll \
#     -p 4000:4000 gh-pages \
#     /bin/sh -c "bundle config set --local path '/srv/jekyll/.gems' && bundle install && bundle exec jekyll serve --livereload --host 0.0.0.0"

# Usage: DOCKER
# docker build --tag gh-pages .
# docker run -it --rm \
#     --user "$(id -u):$(id -g)" \
#     --volume="$PWD:/srv/jekyll:Z" -w /srv/jekyll \
#     -p 4000:4000 gh-pages \
#     /bin/sh -c "bundle config set --local path '/srv/jekyll/.gems' && bundle install && bundle exec jekyll serve --livereload --host 0.0.0.0"
