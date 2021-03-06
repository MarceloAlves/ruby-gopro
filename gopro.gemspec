# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gopro/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-gopro"
  spec.version       = GoPro::VERSION
  spec.authors       = ["Marcelo Alves"]
  spec.email         = ["selfmadecelo@gmail.com"]

  spec.summary       = %q{Small library to work with the GoPro Hero 4}
  spec.homepage      = "https://github.com/MarceloAlves/ruby-gopro"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "simplecov", ">= 0.9"
  spec.add_development_dependency 'coveralls', '>= 0.8.0'
  spec.add_dependency "httparty"
end
