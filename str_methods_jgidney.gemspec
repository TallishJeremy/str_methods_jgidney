
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str_methods_jgidney/version"

Gem::Specification.new do |spec|
  spec.name          = "str_methods_jgidney"
  spec.version       = StrMethodsJgidney::VERSION
  spec.authors       = ["Jeremy Gidney"]
  spec.email         = ["gidneyjeremy@gmail.com"]

  spec.summary       = "learning publishing gems"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
