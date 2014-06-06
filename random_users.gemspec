# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'random_users/version'

Gem::Specification.new do |spec|
  spec.name          = "random_users"
  spec.version       = RandomUsers::VERSION
  spec.authors       = ["bmalets"]
  spec.email         = ["b.malets@gmail.com"]
  spec.summary       = %q{ Generator of random user data }
  spec.description   = %q{ You can generate many random users for your ruby app. (this gem use http://randomuser.me/ service) }
  spec.homepage      = "http://randomuser.me"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
