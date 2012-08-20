# -*- encoding: utf-8 -*-
require File.expand_path('../lib/elapsed/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sean Moubry"]
  gem.email         = ["sean@moubry.com"]
  gem.description   = %q{Calculate the elapsed time between two dates/times from the command line.}
  gem.summary       = %q{Calculate the elapsed time between two dates/times from the command line.}
  gem.homepage      = "http://github.com/moubry/elapsed"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "elapsed"
  gem.require_paths = ["lib"]
  gem.version       = Elapsed::VERSION
end
