# Rakefile for stream   -*- ruby -*-

require 'bundler/setup'
require 'rubygems/package_task'

require 'rake/testtask'
require 'rake/clean'
require 'yard'


SRC_RB = FileList['lib/*.rb']

# The default task is run if rake is given no explicit arguments.

desc "Default Task"
task :default => :test

# Define a test task.

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/test*.rb'
  t.verbose = true
end

task :test

# Define a test that will run all the test targets.
desc "Run all test targets"
task :testall => [:test ]

# Git tagging

desc "Commit all changes as a new version commit. Tag the commit with v<version> tag"
task :tag do
  puts "Committing and tagging version #{STREAM_VERSION}"
  `git commit -am 'Version #{STREAM_VERSION}'`
  `git tag 'v#{STREAM_VERSION}'`
end

# Documentation

YARD::Rake::YardocTask.new

# Tasks for building and installing Stream gem.

Bundler::GemHelper.install_tasks
