# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-i18n"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt"]
  s.date = "2011-04-13"
  s.description = "i18n logic extracted from RefineryCMS, for Refinery CMS."
  s.email = "parndt@gmail.com"
  s.homepage = "http://philiparndt.name"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "i18n logic for Refinery CMS."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, [">= 0.9.9.12"])
      s.add_runtime_dependency(%q<routing-filter>, [">= 0.2.3"])
    else
      s.add_dependency(%q<refinerycms-core>, [">= 0.9.9.12"])
      s.add_dependency(%q<routing-filter>, [">= 0.2.3"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, [">= 0.9.9.12"])
    s.add_dependency(%q<routing-filter>, [">= 0.2.3"])
  end
end
