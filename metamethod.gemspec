# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metamethod/version'

Gem::Specification.new do |gem|
  gem.name          = "metamethod"
  gem.version       = MetaMethod::VERSION
  gem.authors       = ["Robert Gleeson"]
  gem.email         = ["rob@flowof.info"]
  gem.description   = %q{Query Method objects about their visibility.}
  gem.summary       = gem.description
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
