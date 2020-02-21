$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "hooks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "hooks"
  spec.version     = Hooks::VERSION
  spec.authors     = ["Subin T P"]
  spec.email       = ["subin@chatwoot.com"]
  spec.homepage    = "https://www.chatwoot.com"
  spec.summary     = "Third party hooks to Chatwoot"
  spec.description = "Third party hooks to Chatwoot"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"

  spec.add_development_dependency "pg"
  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'shoulda-matchers'
end
