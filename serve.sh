#!/bin/bash
# stop any running unicorns
cat tmp/pids/unicorn.pid | xargs kill -QUIT
# start gollum as a background process
# you can pipe output to /dev/null instead, if you don't want a log
unicorn -c config/unicorn.rb -D -E production
