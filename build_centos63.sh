#!/bin/bash

# Use the correct ruby
#rvm use "ruby@gemset"
# Set "fail on error" in bash
set -e

bundle install

bundle exec veewee vbox build 'centos63' --force --auto --nogui
bundle exec veewee vbox validate 'centos63'

bundle exec vagrant basebox export 'centos63' --force

