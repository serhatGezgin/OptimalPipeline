# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "friendly_id_globalize3"
  s.version = "3.2.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Norman Clarke", "Adrian Mugnolo", "Emilio Tagua", "Philip Arndt"]
  s.date = "2012-01-24"
  s.description = "    FriendlyId is the \"Swiss Army bulldozer\" of slugging and permalink plugins\n    for Ruby on Rails. It allows you to create pretty URL's and work with\n    human-friendly strings as if they were numeric ids for ActiveRecord models.\n"
  s.email = ["norman@njclarke.com", "adrian@mugnolo.com", "miloops@gmail.com", "parndt@gmail.com"]
  s.homepage = "http://norman.github.com/friendly_id"
  s.require_paths = ["lib"]
  s.rubyforge_project = "friendly-id"
  s.rubygems_version = "1.8.23"
  s.summary = "A comprehensive slugging and pretty-URL plugin. Fork for globalize3 support."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<babosa>, ["~> 0.3.0"])
      s.add_development_dependency(%q<activerecord>, ["~> 3.0"])
      s.add_development_dependency(%q<mocha>, ["~> 0.9"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
    else
      s.add_dependency(%q<babosa>, ["~> 0.3.0"])
      s.add_dependency(%q<activerecord>, ["~> 3.0"])
      s.add_dependency(%q<mocha>, ["~> 0.9"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
    end
  else
    s.add_dependency(%q<babosa>, ["~> 0.3.0"])
    s.add_dependency(%q<activerecord>, ["~> 3.0"])
    s.add_dependency(%q<mocha>, ["~> 0.9"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
  end
end
