#!/usr/bin/env bash

set -o errexit

bundle config set --local without 'development:test'
bundle
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate