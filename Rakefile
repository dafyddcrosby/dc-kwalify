# frozen_string_literal: true

task :test do
  ruby "test/test.rb"
end

begin
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new do |t|
    t.options = ['--display-cop-names']
  end
rescue LoadError
  desc 'rubocop task stub'
  task :rubocop do
    warn 'RuboCop is disabled (gem not installed)'
  end
end

task default: %i[test]
