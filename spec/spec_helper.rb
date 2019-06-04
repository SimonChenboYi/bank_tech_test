# frozen_string_literal: true

require 'simplecov'
require 'simplecov-console'
require 'rspec'

require 'test_helper'

SimpleCov.formatter =
  SimpleCov::Formatter::MultiFormatter.new([
                                             SimpleCov::Formatter::Console
                                           ])
SimpleCov.start
