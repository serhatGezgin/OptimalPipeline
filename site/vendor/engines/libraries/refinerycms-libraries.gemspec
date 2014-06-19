Gem::Specification.new do |s|
  s.authors           = ['Paul Coyle']
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-libraries'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Libraries engine for Refinery CMS'
  s.date              = '2011-12-04'
  s.summary           = 'Libraries engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
end
