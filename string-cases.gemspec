# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: string-cases 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "string-cases"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["kaspernj"]
  s.date = "2016-01-10"
  s.description = "Small gem for converting various string-cases to other cases."
  s.email = "k@spernj.org"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = Dir["{include,lib}/**/*"] + ["Rakefile"]
  s.homepage = "http://github.com/kaspernj/string-cases"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Small gem for converting various string-cases to other cases."

  s.specification_version = 4

  s.add_development_dependency "rspec", "~> 3.13.0"
  s.add_development_dependency "rdoc", "~> 6.5"
  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "jeweler", "~> 2.3.9"
  s.add_development_dependency "rubocop", ">= 0"
end
