$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "thincloud/authentication/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "thincloud-authentication"
  s.version     = Thincloud::Authentication::VERSION
  s.authors     = ["Phil Cohen", "Robert Bousquet"]
  s.email       = ["pcohen@newleaders.com", "rbousquet@newleaders.com"]
  s.homepage    = "https://github.com/newleaders/thincloud-authentication"
  s.summary     = "Rails Engine to provide authentication for Thincloud applications"
  s.description = "Rails Engine to provide authentication for Thincloud applications"

  s.files = Dir["{app,config,db,lib}/**/*"] + %w[MIT-LICENSE Rakefile README.md]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "omniauth", "~> 1.1.1"
  s.add_dependency "omniauth-identity", "~> 1.1.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "cane"
  s.add_development_dependency "guard"
  s.add_development_dependency "growl"
  s.add_development_dependency "minitest"
  s.add_development_dependency "guard-minitest"
  s.add_development_dependency "minitest-rails"
  s.add_development_dependency "minitest-rails-shoulda"
  s.add_development_dependency "rb-fsevent"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "mocha" # Must be after minitest

end
