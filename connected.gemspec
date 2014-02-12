# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'connected/version'

Gem::Specification.new do |spec|
  spec.name          = "connected"
  spec.version       = Connected::VERSION
  spec.authors       = ["Klaus Hartl"]
  spec.email         = ["klaus.hartl@gmail.com"]
  spec.summary       = %q{Ruby + ZeroMQ made simple.}
  spec.description   = ""
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 1.9.3"

  spec.add_runtime_dependency "ffi-rzmq", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.1"
  spec.add_development_dependency "cucumber", "~> 1.3"
  spec.add_development_dependency "minitest", "~> 4"
  spec.add_development_dependency "guard-cucumber", "~> 1.4"
  spec.add_development_dependency "guard-minitest", "~> 2.2"
end
