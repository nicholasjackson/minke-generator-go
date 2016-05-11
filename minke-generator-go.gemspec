# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'generators/gomicroservice/version'

Gem::Specification.new do |spec|
  spec.name          = 'minke-generator-go'
  spec.version       = Minke::Generators::GoMicroservice::VERSION
  spec.authors       = ['Nic Jackson']
  spec.email         = ['jackson.nic@gmail.com']

  spec.summary       = 'Go microservice template for Minke'
  spec.description   = 'Go microservice for Minke, please see https://github.com/nicholasjackson/minkie for further details'
  spec.homepage      = 'https://github.com/nicholasjackson/minkie-generator-go'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # required so minke knows to load the gem which then registers itself
  spec.metadata = { 'entrypoint' => 'generators/gomicroservice' }

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
