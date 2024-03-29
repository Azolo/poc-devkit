# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "poc-devkit"
  spec.version       = "0.0.1"
  spec.authors       = ["Justin Baker"]
  spec.email         = ["azolo1089@gmail.com"]
  spec.description   = %q{Proof-of-concept to gemify DevKit}
  spec.summary       = %q{Proof-of-concept to gemify DevKit}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
