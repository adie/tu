# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tu/version"

Gem::Specification.new do |s|
  s.name        = "tu"
  s.version     = Tu::VERSION
  s.authors     = ["Anton Dieterle"]
  s.email       = ["antondie@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Tiny Utilites}
  s.description = %q{Small quick utilites to simplify some tasks}

  s.rubyforge_project = "tu"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "thor"
end
