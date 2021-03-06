# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grape-slate/version'

Gem::Specification.new do |spec|
  spec.name          = 'grape-slate'
  spec.version       = GrapeSlate::VERSION
  spec.authors       = ['John Allen']
  spec.email         = ['john@threedogconsulting.com']
  spec.summary       = %q{Allows for generating a Slate document for your Grape API}
  spec.description   = %q{Auto generates a Slate (https://github.com/tripit/slate) document from the docuementation that is created by your Grape API}
  spec.homepage      = 'https://github.com/connexio-labs/grape-slate'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'grape'

  spec.add_development_dependency 'coveralls', '~> 0.7'
  spec.add_development_dependency 'rspec', '~> 2.14'
  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.18'
  spec.add_development_dependency 'pry', '~> 0.9'
  spec.add_development_dependency 'guard', '~> 2.4'
  spec.add_development_dependency 'guard-rspec', '~> 4.2'
  spec.add_development_dependency 'guard-bundler', '~> 2.0'
end
