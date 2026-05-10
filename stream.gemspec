require_relative 'lib/stream/version'

Gem::Specification.new do |s|
  s.name    = 'stream'
  s.version = Stream::VERSION
  s.summary = "stream - Extended External Iterators"
  s.description = "Module Stream defines an interface for external iterators."

  #### Dependencies and requirements.

  s.add_development_dependency 'rake'
  s.add_development_dependency 'test-unit'

  #### Which files are to be included in this gem?

  s.files = Dir[
    '[A-Z]*',
    'lib/**/*.rb',
    'test/**/*.rb',
    'examples/**/*',
    'Gemfile',
    'README.md',
    'LICENSE',
    'Rakefile'
  ]

  #### Load-time details: library and application (you will need one or both).

  s.require_paths = ['lib']
  s.license  = 'ruby'

  #### Author and project details.

  s.authors           = [ "Horst Duchene" ]
  s.email             = "monora@gmail.com"
  s.homepage          = "https://github.com/monora/stream"
end
