# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'postnord/version'

Gem::Specification.new do |spec|
  spec.name          = "postnord_api"
  spec.version       = Postnord::VERSION
  spec.authors       = ["Ahmed Elnaqah", "Amgad Naeim", "Basem Ezzat"]
  spec.email         = ["amgad@optomatica.com"]

  spec.summary       = %q{postnord api gem}
  spec.description   = %q{This is a gem that simplefy the handling of postnord rest api with ruby}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.10"
end
