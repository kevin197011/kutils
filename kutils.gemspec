# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'kutils'
  spec.version       = '0.1.0'
  spec.authors       = ['kk']
  spec.email         = ['kk@example.com']
  spec.summary       = 'A collection of geek-style Ruby utility modules.'
  spec.description   = 'String, time, file, crypto, array, validation, debug, DSL, formatting and more.'
  spec.homepage      = 'https://github.com/kk/kutils'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.7.0'

  spec.files         = Dir['lib/**/*', 'README.md', 'LICENSE']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'kramdown', '~> 2.4'
  spec.add_runtime_dependency 'rouge', '~> 4.2'
  spec.add_development_dependency 'rspec', '~> 3.12'
  spec.add_development_dependency 'rubocop', '~> 1.60'
end
