$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "uuid_ids/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "uuid_ids"
  s.version     = UuidIds::VERSION
  s.authors     = ["Jeremy Green"]
  s.email       = ["jeremy@octolabs.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of UuidIds."
  s.description = "TODO: Description of UuidIds."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "uuidtools", "~> 2.1.4"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
end
