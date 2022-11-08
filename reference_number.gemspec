require File.expand_path("../lib/reference_number/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "reference_number"
  s.version     = ReferenceNumber::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Antti Akonniemi"]
  s.email       = ["antti@kiskolabs.com"]
  s.homepage    = "http://github.com/akonan/reference_number"
  s.license       = "MIT"

  s.summary     = "A gem for calculating reference number (viitenumere, referensnummer)"
  s.description = "No need to copy paste your old reference number codes anymore, just use this gem"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/akonan/reference_number"
  s.metadata["changelog_uri"] = "https://github.com/akonan/reference_number/blob/master/CHANGELOG.md"

  s.required_rubygems_version = ">= 1.3.6"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", "~> 2.11.0"

  s.files = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md", "lib/generators/**/*.*"]
  s.require_paths = 'lib'
end
