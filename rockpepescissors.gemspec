# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rockpepescissors/version'

Gem::Specification.new do |spec|
  spec.name          = "rockpepescissors"
  spec.version       = Rockpepescissors::VERSION
  spec.authors       = ["Francisco Suero"]
  spec.email         = ["suerofrancisco@yahoo.com"]

  spec.summary       = "This gem is like rock paper scissors but better"
  spec.description   = "Its not just 'rock, paper scissors', its a revolution in gaming"
  spec.homepage      = "https://google.com"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
