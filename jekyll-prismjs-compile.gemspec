# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-prismjs-compile/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-prismjs-compile"
  spec.version       = Jekyll::PrismJsCompile::VERSION
  spec.authors       = ["Mohammad Hasbini"]
  spec.email         = ["mohammadhasbini@gmail.com"]
  spec.summary       = "Liquid tag for pre-processing Prism.js highlights"
  spec.homepage      = "https://github.com/0xbsec/jekyll-prismjs-compile"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_runtime_dependency "jekyll", ">= 3.7", "< 5.0"
  spec.add_runtime_dependency "execjs", "~> 2.7"
  spec.add_runtime_dependency "json"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rubocop-jekyll", "~> 0.4"
  spec.add_development_dependency "pry"
end
