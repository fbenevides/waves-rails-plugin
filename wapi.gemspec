lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require "wapi/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
 # s.required_ruby_version '2.1.1'

  s.name        = "wapi"
  s.version     = Wapi::VERSION
  s.authors     = ["Felipe Benevides"]
  s.email       = ["felipe.benevidesv@gmail.com"]
  s.homepage    = "http://fbenevides.github.io"
  s.summary     = "Waves API"
  s.description = "Extracting Waves information easily."
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.required_ruby_version = '>= 2.1.1'

  s.add_runtime_dependency "nokogiri", '~> 1.6'

  s.add_development_dependency "rspec", "~> 3.1"
  s.add_development_dependency "simplecov", "~> 0.9"
  s.add_development_dependency "codeclimate-test-reporter", "~> 0.4"
end
