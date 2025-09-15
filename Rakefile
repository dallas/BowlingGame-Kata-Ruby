# frozen_string_literal: true

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.description = 'Run tests'
  t.test_files = FileList['test/**/*_{test,spec}.rb']
end

task default: :test
