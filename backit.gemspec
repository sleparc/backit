# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "backit/version"

Gem::Specification.new do |s|
  s.name        = "backit"
  s.version     = Backit::VERSION
  s.authors     = ["Simon Le Parc"]
  s.email       = ["lpl.simon@gmail.com"]
  s.homepage    = "http://github.com/sleparc/backit"
  s.summary     = "Daily backup of your files using GitHub"
  s.description = "Daily backup of your files using GitHub"
  s.rubyforge_project = "backit"
  s.executables   << 'backit'
  s.add_runtime_dependency "javan-whenever"
  s.require_paths = ["lib"]
end
