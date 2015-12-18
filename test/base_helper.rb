# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

if ENV['CI']
  require 'coveralls'
  Coveralls.wear!
end

require 'simplecov'
SimpleCov.start 'rails' do
  add_filter %w(version.rb)
end

require 'rubygems'
require 'bundler/setup'
require 'minitest/autorun'
if RUBY_VERSION >= '2.0.0'
  require 'byebug'
else
  require 'debugger'
end
require 'mocha/setup'
require 'rails'

require 'database_cleaner'

# MiniTest 4 support
MiniTest::Test = MiniTest::Unit::TestCase unless defined?(MiniTest::Test)

module ClientSideValidations; end
