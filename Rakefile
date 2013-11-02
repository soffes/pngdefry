require 'bundler/gem_tasks'
require 'rake/extensiontask'
require 'rake/testtask'

spec = Gem::Specification.load('pngdefry.gemspec')
Rake::ExtensionTask.new('pngdefry', spec)

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
end
task default: [:compile, :test]
