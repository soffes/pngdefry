# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pngdefry/version'

Gem::Specification.new do |spec|
  spec.name          = 'pngdefry'
  spec.version       = Pngdefry::VERSION
  spec.authors       = ['Sam Soffes', 'Caleb Davenport']
  spec.email         = ['sam@soff.es', 'calebmdavenport@gmail.com']
  spec.description   = 'Unfry PNGCrushed PNGs.'
  spec.summary       = 'Un-iPhone-PNGCrush PNGs'
  spec.homepage      = 'https://github.com/soffes/pngdefry'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.platform      = Gem::Platform::RUBY
  spec.extensions    = ['ext/pngdefry/extconf.rb']

  spec.add_development_dependency 'bundler', '~> 1.3'
end
