# frozen_string_literal: true

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.description = 'Run tests'
  t.test_files = FileList['test/**/*_{test,spec}.rb']
end

task default: :test

desc 'Start an interactive console with the Bowling app loaded'
task :console do
  require 'pry'
  require_relative './main'
  Pry.start
end
