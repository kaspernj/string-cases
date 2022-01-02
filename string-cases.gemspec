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
  s.files = [
    ".document",
    ".rspec",
    ".rubocop.yml",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/string-cases.rb",
    "shippable.yml",
    "spec/spec_helper.rb",
    "spec/string-cases_spec.rb",
    "string-cases.gemspec"
  ]
  s.homepage = "http://github.com/kaspernj/string-cases"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Small gem for converting various string-cases to other cases."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 3.2.0"])
      s.add_development_dependency(%q<rdoc>, "~> 6.4")
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.8"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, ["~> 3.2.0"])
      s.add_dependency(%q<rdoc>, "~> 6.4")
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.8"])
      s.add_dependency(%q<rubocop>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 3.2.0"])
    s.add_dependency(%q<rdoc>, "~> 6.4")
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.8"])
    s.add_dependency(%q<rubocop>, [">= 0"])
  end
end

