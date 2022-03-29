#!/bin/bash

rm -f /var/app/tmp/pids/server.pid

echo "Creating database..."
bundle exec rake db:setup

echo "Starting application..."
bundle exec rails s -b '0.0.0.0' -p 3000
