# -*- encoding: utf-8 -*-
require File.expand_path('../lib/social_buttons/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alex Kojin"]
  gem.email         = ["alexkojin@gmail.com"]
  gem.description   = "Helper methods for to easy integrate social buttons 'Pin It', 'Like', 'Tweet it', 'G+' in Rails app."
  gem.summary       = ""
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "social_buttons"
  gem.require_paths = ["lib"]
  gem.version       = SocialButtons::VERSION

  gem.add_dependency "rails", ">=3.0.0"
end
