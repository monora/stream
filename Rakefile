# Rakefile for stream   -*- ruby -*-

require 'bundler/setup'

require 'rake/testtask'

desc "Default Task"
task :default => :test

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/test*.rb'
  t.verbose = true
end

task :test

Bundler::GemHelper.install_tasks
