# -*- encoding: utf-8 -*-
require File.expand_path('../lib/string_helpers/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Raphael Ivan"]
  gem.email         = ["raphaivan@gmail.com"]
  gem.date          = %q{2012-10-18}
  gem.description   = %q{Extend some methods to String class.}
  gem.summary       = %q{The libary extend some instance methods to String class.}
  gem.homepage      = "https://github.com/RaphaelIvan/string_helpers"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "string_helpers"
  gem.require_paths = ["lib"]
  gem.version       = StringHelpers::VERSION
end
