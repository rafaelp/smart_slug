#encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "smart_slug/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "smart_slug"
  s.version     = SmartSlug::VERSION
  s.authors     = ["Rafael Lima"]
  s.email       = ["contato@rafael.adm.br"]
  s.homepage    = "http://github.com/rafaelp/smart_slug"
  s.summary     = "SmartSlug creates slugs removing accents from strings"
  s.description = "SmartSlug creates slugs removing accents from strings"

  s.files      = `git ls-files`.split($\)
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  s.add_development_dependency "rspec", '2.14.1'
end
