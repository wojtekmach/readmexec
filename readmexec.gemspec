# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'readmexec/version'

Gem::Specification.new do |spec|
  spec.name          = "readmexec"
  spec.version       = Readmexec::VERSION
  spec.authors       = ["Wojtek Mach"]
  spec.email         = ["wojtek@wojtekmach.pl"]
  spec.summary       = %q{Readmexec grabs commands from your README and runs them.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
