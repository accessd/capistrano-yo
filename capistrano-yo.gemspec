# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/yo/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-yo"
  spec.version       = Capistrano::Yo::VERSION
  spec.authors       = ["Andrey Morskov"]
  spec.email         = ["accessd0@gmail.com"]
  spec.summary       = %q{Capistrano notification of completion of deploy via Yo app!}
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = "https://github.com/accessd/capistrano-yo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1"
  spec.add_development_dependency "rake"
end
