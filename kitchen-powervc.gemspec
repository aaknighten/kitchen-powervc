# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen/driver/powervc_version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-powervc'
  spec.version       = Kitchen::Driver::POWERVC_VERSION
  spec.authors       = ['Alayshia Knighten']
  spec.email         = ['aknighten@chef.io']
  spec.description   = %q(A Test Kitchen Driver for Powervc)
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/aaknighten/kitchen-powervc.git'
  spec.license       = 'Apache-2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'test-kitchen', '~> 1.0', '>= 1.0.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 13.0.1'

  spec.add_development_dependency 'cane', '~> 3.0.0'
  spec.add_development_dependency 'tailor', '~> 1.4.1'
  spec.add_development_dependency 'countloc', '~> 0.4.0'
end
