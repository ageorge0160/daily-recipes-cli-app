# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'daily_recipes/version'

Gem::Specification.new do |spec|
  spec.name          = "daily_recipes"
  spec.version       = DailyRecipes::VERSION
  spec.authors       = ["Amanda George"]
  spec.email         = ["ageorge0160@gmail.com"]

  spec.summary       = "A gem used to deliver one recipe for a daily meal"
  spec.description   = "A randomly selected recipe from pinchofyum.com delivered with the option to see the recipe for a new meal each day."
  spec.homepage      = "https://github.com/ageorge0160/daily-recipes-cli-app"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "nokogiri"


end
