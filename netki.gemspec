# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'netki/version'

Gem::Specification.new do |spec|
  spec.name          = "netki"
  spec.version       = Netki::VERSION
  spec.licenses      = ['BSD-3-Clause']
  spec.authors       = ["Matt David"]
  spec.email         = ["opensource@netki.com"]

  spec.summary       = %q{Netki Partner API}
  spec.description   = %q{Netki module that provides access to the Netki Wallet Name Partner API}
  spec.homepage      = "https://github.com/netkicorp/ruby-partner-client"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "httpclient", "~> 2.6"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "test-unit", "~> 3.1"
  spec.add_development_dependency "test-unit-mock", "~> 0.3"
  spec.add_development_dependency "mocha", "~> 1.1"
  spec.add_development_dependency "webmock", "~> 1.21"
end
