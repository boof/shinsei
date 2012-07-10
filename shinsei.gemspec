# -*- encoding: utf-8 -*-
require File.expand_path('../lib/shinsei/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Florian Aßmann"]
  gem.email         = ["fassmann@fork.de"]
  gem.description   = %q{ Ruby bindings for libnova, a general purpose, double precision, Celestial Mechanics, Astrometry and Astrodynamics library. }
  gem.summary       = %q{ Ruby bindings for libnova }
  gem.homepage      = "https://github.com/boof/shinsei"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "shinsei"
  gem.require_paths = ["lib"]
  gem.version       = Shinsei::VERSION

  # TODO Submit homebrew formula
  gem.requirements << 'libnova v0.14 (http://libnova.sourceforge.net/)'
  gem.add_dependency 'ffi', '~> 1.0'
end
