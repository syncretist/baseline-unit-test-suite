require 'bundler/setup'     # ensures you're loading Gemfile defined gems (http://stackoverflow.com/questions/7243486/why-do-you-need-require-bundler-setup)

gem     'minitest'          # ensures you"re using the gem, and not the built-in MT
require 'minitest/autorun'  # the easy and explicit way to run all your tests

