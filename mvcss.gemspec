$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mvcss/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mvcss"
  s.version     = Mvcss::VERSION
  s.authors     = ["Nick Walsh", "Drew Barontini"]
  s.email       = ["email@envylabs.com"]
  s.homepage    = "http://mvcss.github.io"
  s.summary     = "TODO: Summary of Mvcss."
  s.description = "TODO: Description of Mvcss."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.1"

  s.add_development_dependency "sqlite3"
end
