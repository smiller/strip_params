# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "strip_params/version"

Gem::Specification.new do |s|
  s.name        = "strip_params"
  s.version     = StripParams::VERSION
  s.authors     = ["Sean Miller"]
  s.email       = ["sean@seanmiller.ca"]
  s.homepage    = "http://github.com/smiller/strip_params"
  s.summary     = %q{Runs strip! recursively on input params}
  s.description = %q{Usage: before_filter :strip_params; def strip_params; StripParams.all!(params); end}

  s.rubyforge_project = "strip_params"

  s.files         = `git ls-files`.split("\n")
  s.add_development_dependency "rspec"
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
