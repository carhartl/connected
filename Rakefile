require "bundler/gem_tasks"

require "rubygems"
require "cucumber"
require "cucumber/rake/task"

Cucumber::Rake::Task.new(:features) do |t|
end

require "rake/testtask"

Rake::TestTask.new do |t|
  t.pattern = "spec/**/*_spec.rb"
end
task :spec => :test

task :default => [:features, :spec]
