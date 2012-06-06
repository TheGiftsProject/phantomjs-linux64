# -*- encoding: utf-8 -*-
require File.expand_path('../lib/phantomjs-linux64/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Maxwell Salzberg"]
  gem.email         = ["maxwell@joindiaspora.com"]
  gem.description   = %q{phantomjs binaries for linux}
  gem.summary       = %q{its just the depdencies vendored}
  gem.homepage      = "https://github.com/maxwell/phantomjs-linux64"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "phantomjs-linux64"
  gem.require_paths = ["lib"]
  gem.version       = Phantomjs::Linux64::VERSION

  gem.add_development_dependency 'rspec', '~> 2.9'
end
