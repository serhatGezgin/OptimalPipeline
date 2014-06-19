# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms"
  s.version = "1.0.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Resolve Digital", "Philip Arndt", "David Jones", "Steven Heidel", "U\u{123}is Ozols"]
  s.date = "2012-05-18"
  s.description = "A Ruby on Rails CMS that supports Rails 3. It's easy to extend and sticks to 'the Rails way' where possible."
  s.email = "info@refinerycms.com"
  s.executables = ["refinerycms"]
  s.files = ["bin/refinerycms"]
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "refinerycms"
  s.rubygems_version = "1.8.23"
  s.summary = "A Ruby on Rails CMS that supports Rails 3"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>, ["~> 1.0"])
      s.add_runtime_dependency(%q<refinerycms-authentication>, ["= 1.0.11"])
      s.add_runtime_dependency(%q<refinerycms-base>, ["= 1.0.11"])
      s.add_runtime_dependency(%q<refinerycms-core>, ["= 1.0.11"])
      s.add_runtime_dependency(%q<refinerycms-dashboard>, ["= 1.0.11"])
      s.add_runtime_dependency(%q<refinerycms-images>, ["= 1.0.11"])
      s.add_runtime_dependency(%q<refinerycms-pages>, ["= 1.0.11"])
      s.add_runtime_dependency(%q<refinerycms-resources>, ["= 1.0.11"])
      s.add_runtime_dependency(%q<refinerycms-settings>, ["= 1.0.11"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<refinerycms-authentication>, ["= 1.0.11"])
      s.add_dependency(%q<refinerycms-base>, ["= 1.0.11"])
      s.add_dependency(%q<refinerycms-core>, ["= 1.0.11"])
      s.add_dependency(%q<refinerycms-dashboard>, ["= 1.0.11"])
      s.add_dependency(%q<refinerycms-images>, ["= 1.0.11"])
      s.add_dependency(%q<refinerycms-pages>, ["= 1.0.11"])
      s.add_dependency(%q<refinerycms-resources>, ["= 1.0.11"])
      s.add_dependency(%q<refinerycms-settings>, ["= 1.0.11"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<refinerycms-authentication>, ["= 1.0.11"])
    s.add_dependency(%q<refinerycms-base>, ["= 1.0.11"])
    s.add_dependency(%q<refinerycms-core>, ["= 1.0.11"])
    s.add_dependency(%q<refinerycms-dashboard>, ["= 1.0.11"])
    s.add_dependency(%q<refinerycms-images>, ["= 1.0.11"])
    s.add_dependency(%q<refinerycms-pages>, ["= 1.0.11"])
    s.add_dependency(%q<refinerycms-resources>, ["= 1.0.11"])
    s.add_dependency(%q<refinerycms-settings>, ["= 1.0.11"])
  end
end
