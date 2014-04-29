require 'bundler/setup'     # ensures you're loading Gemfile defined gems (http://stackoverflow.com/questions/7243486/why-do-you-need-require-bundler-setup)

gem     'minitest'          # ensures you"re using the gem, and not the built-in MT
require 'minitest/autorun'  # the easy and explicit way to run all your tests
require 'turn'

# Configure testsuite output
# http://blog.rawonrails.com/2012/01/better-minitest-output-with-turn-gem.html

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
