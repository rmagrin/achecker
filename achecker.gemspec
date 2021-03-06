# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'achecker/version'

Gem::Specification.new do |spec|
  spec.name          = "achecker"
  spec.version       = AChecker::VERSION
  spec.authors       = ["Rafael Magrin"]
  spec.email         = ["rafael.magrin@gmail.com"]
  spec.summary       = "Wrapper for AChecker Web Accessibility Checker"
  spec.description   = "Wrapper for AChecker Web Accessibility Checker"
  spec.homepage      = "https://github.com/rmagrin/achecker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_dependency "nokogiri", "~> 1.10.10"

  spec.add_development_dependency "webmock", "~> 3.11.2"
  spec.add_development_dependency "rake", "~> 13.0.3"
  spec.add_development_dependency "rspec", "~> 3.10.0"
end
