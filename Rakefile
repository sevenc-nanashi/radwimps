# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

task default: %i[]

RSpec::Core::RakeTask.new("spec")

task :steep do
  sh "steep check"
end
