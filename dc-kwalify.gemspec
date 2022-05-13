# frozen_string_literal: true

require_relative 'lib/kwalify/version'

Gem::Specification.new do |spec|
  spec.name          = 'dc-kwalify'
  spec.version       = Kwalify::RELEASE
  spec.authors       = ['David Crosby', 'makoto kuwata']

  spec.summary       = 'Kwalify is a parser, schema validator, and data binding tool for YAML and JSON.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/dafyddcrosby/dc-kwalify'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2.5.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
