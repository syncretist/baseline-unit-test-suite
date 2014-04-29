require 'bundler/setup' # ensures you're loading Gemfile defined gems (http://stackoverflow.com/questions/7243486/why-do-you-need-require-bundler-setup)
require 'rake/testtask' # task for your tests/specs to get executed (https://mallibone.wordpress.com/tag/raketesttask/) 

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*_test.rb']
end

task default: :test
