$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "in_rails_action/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "in_rails_action"
  s.version     = InRailAction::VERSION
  s.authors     = ["daisuke.fuchiwaki"]
  s.email       = ["nagita.0724.0812@gmail.com"]
  s.homepage    = "https://github.com/redfit/in_rails_action"
  s.summary     = "This is an extension to the jQuery to run to each controller / action each."
  s.description = "This is an extension to the jQuery to run to each controller / action each."

  s.files = `git ls-files`.split("\n")

  s.add_dependency "rails", ">= 3.2.12"
  s.add_dependency "coffee-rails"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
