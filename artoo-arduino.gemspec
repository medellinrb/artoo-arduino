# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "artoo-arduino/version"

Gem::Specification.new do |s|
  s.name        = "artoo-arduino"
  s.version     = Artoo::Arduino::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ron Evans", "Adrian Zankich", "Rafael Magaña", "Edgar Silva"]
  s.email       = ["artoo@hybridgroup.com"]
  s.homepage    = "https://github.com/hybridgroup/artoo-arduino"
  s.summary     = %q{Artoo adaptor and driver for Arduino}
  s.description = %q{Artoo adaptor and driver for Arduino}
  s.license     = 'Apache 2.0'

  s.rubyforge_project = "artoo-arduino"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.extensions    = ["ext/Rakefile"]

  s.add_runtime_dependency 'artoo', '>= 1.8.1'
  s.add_runtime_dependency 'artoo-gpio', '>= 0.4.1'
  s.add_runtime_dependency 'artoo-i2c', '>= 0.5.0'
  s.add_runtime_dependency 'hybridgroup-firmata', '>= 0.4.6'
  s.add_development_dependency 'minitest', '~> 5.0'
  s.add_development_dependency 'minitest-happy', '~> 1.0.0'
  s.add_development_dependency 'mocha', '~> 0.14.0'
end
