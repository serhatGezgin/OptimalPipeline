# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-generators"
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Resolve Digital"]
  s.date = "2011-09-13"
  s.description = "Core generators for Refinery CMS including refinery_engine."
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Core generators for the Refinery CMS project."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
