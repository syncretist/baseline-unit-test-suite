require 'bundler/setup'     # ensures you're loading Gemfile defined gems (http://stackoverflow.com/questions/7243486/why-do-you-need-require-bundler-setup)

## Test suite as minitest

gem     'minitest'          # ensures you"re using the gem, and not the built-in MT
require 'minitest/autorun'  # run any specs after the file has been evaluated; 'the easy and explicit way to run all your tests'

## Configure test suite output formatting
### http://blog.rawonrails.com/2012/01/better-minitest-output-with-turn-gem.html

require 'turn'

Turn.config do |c|
 # use one of output formats:
 # :outline  - turn's original case/test outline mode [default]
 # :progress - indicates progress with progress bar
 # :dotted   - test/unit's traditional dot-progress mode
 # :pretty   - new pretty reporter
 # :marshal  - dump output as YAML (normal run mode only)
 # :cue      - interactive testing
 c.format  = :outline

 # turn on invoke/execute tracing, enable full backtrace
 c.trace   = true

 # use humanized test names (works only with :outline format)
 c.natural = true
end

## Configure pry to autorun on test failures
### https://github.com/banister/plymouth#plymouth
### https://github.com/pry/pry/wiki/Pry-ecosystem#plymouth

require 'pry'         # https://github.com/banister/plymouth/issues/12
require 'plymouth'
