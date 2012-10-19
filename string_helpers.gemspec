# -*- encoding: utf-8 -*-
require File.expand_path('../lib/string_helpers/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Raphael Ivan"]
  gem.email         = ["raphaivan@gmail.com"]
  gem.date          = %q{2012-10-18}
  gem.description   = %q{String helpers}
  gem.summary       = %q{The libary extend some methods to String class}
  gem.homepage      = "https://github.com/RaphaelIvan/string_helpers"

  # gem.files         = `git ls-files`.split($\)
  gem.files = [
       ".gitignore",
       "Rakefile",
       "README.md",
       "lib/string_helpers/version.rb",
       "lib/string_helpers/string.rb",
       "lib/string_helpers.rb",
       "test/test_string_helpers.rb"
    ]

  gem.test_files    = ["test/test_string_helpers.rb"]
  gem.name          = "string_helpers"
  gem.require_paths = ["lib"]
  gem.version       = StringHelpers::VERSION
end
