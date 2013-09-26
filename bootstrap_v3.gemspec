# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap/v3/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap_v3"
  spec.version       = Bootstrap::V3::Rails::VERSION
  spec.authors       = ["AmirolAhmad"]
  spec.email         = ["9w2pdf@gmail.com"]
  spec.description   = %q{Bootstrap V3 for Ruby on Rails}
  spec.summary       = %q{Sleek, intuitive, and powerful mobile first front-end framework for faster and easier web development.}
  spec.homepage      = "https://github.com/AmirolAhmad/bootstrap_v3"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "less-rails"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "binding_of_caller"
  spec.add_development_dependency "git"
end