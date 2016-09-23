# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nbtfile/version'

Gem::Specification.new do |spec|
  spec.name          = "nbtfile"
  spec.version       = NBTFile::VERSION
  spec.authors       = ["MenTaLguY"]
  spec.email         = ["mental@rydia.net"]

  spec.summary       = %q{nbtfile provides a low-level API for reading and writing files using Minecraft's NBT serialization format}
  spec.description   = %q{Library for reading and writing NBT files (as used by Minecraft).}
  spec.homepage      = "http://github.com/mental/nbtfile"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.0"
end
