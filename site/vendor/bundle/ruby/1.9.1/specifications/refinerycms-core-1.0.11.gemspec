# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-core"
  s.version = "1.0.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Resolve Digital", "Philip Arndt", "David Jones", "Steven Heidel", "U\u{123}is Ozols"]
  s.date = "2012-05-18"
  s.description = "The core of Refinery CMS. This handles the common functionality and is required by most engines"
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "refinerycms"
  s.rubygems_version = "1.8.23"
  s.summary = "Core engine for Refinery CMS"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-base>, ["= 1.0.11"])
      s.add_runtime_dependency(%q<refinerycms-settings>, ["= 1.0.11"])
      s.add_runtime_dependency(%q<refinerycms-generators>, ["~> 1.0"])
      s.add_runtime_dependency(%q<acts_as_indexed>, ["~> 0.7"])
      s.add_runtime_dependency(%q<friendly_id_globalize3>, ["~> 3.2.1"])
      s.add_runtime_dependency(%q<globalize3>, ["~> 0.2.0.beta4"])
      s.add_runtime_dependency(%q<awesome_nested_set>, ["~> 2.0"])
      s.add_runtime_dependency(%q<rails>, ["~> 3.0.10"])
      s.add_runtime_dependency(%q<truncate_html>, ["~> 0.5"])
      s.add_runtime_dependency(%q<will_paginate>, ["~> 3.0.0"])
    else
      s.add_dependency(%q<refinerycms-base>, ["= 1.0.11"])
      s.add_dependency(%q<refinerycms-settings>, ["= 1.0.11"])
      s.add_dependency(%q<refinerycms-generators>, ["~> 1.0"])
      s.add_dependency(%q<acts_as_indexed>, ["~> 0.7"])
      s.add_dependency(%q<friendly_id_globalize3>, ["~> 3.2.1"])
      s.add_dependency(%q<globalize3>, ["~> 0.2.0.beta4"])
      s.add_dependency(%q<awesome_nested_set>, ["~> 2.0"])
      s.add_dependency(%q<rails>, ["~> 3.0.10"])
      s.add_dependency(%q<truncate_html>, ["~> 0.5"])
      s.add_dependency(%q<will_paginate>, ["~> 3.0.0"])
    end
  else
    s.add_dependency(%q<refinerycms-base>, ["= 1.0.11"])
    s.add_dependency(%q<refinerycms-settings>, ["= 1.0.11"])
    s.add_dependency(%q<refinerycms-generators>, ["~> 1.0"])
    s.add_dependency(%q<acts_as_indexed>, ["~> 0.7"])
    s.add_dependency(%q<friendly_id_globalize3>, ["~> 3.2.1"])
    s.add_dependency(%q<globalize3>, ["~> 0.2.0.beta4"])
    s.add_dependency(%q<awesome_nested_set>, ["~> 2.0"])
    s.add_dependency(%q<rails>, ["~> 3.0.10"])
    s.add_dependency(%q<truncate_html>, ["~> 0.5"])
    s.add_dependency(%q<will_paginate>, ["~> 3.0.0"])
  end
end
