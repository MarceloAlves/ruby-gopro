$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'gopro'
require 'vcr'
require 'simplecov'
require 'coveralls'

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
end

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start