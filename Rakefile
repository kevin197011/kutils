# frozen_string_literal: true

# Copyright (c) 2025 kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require 'time'
require 'bundler/gem_tasks'

# 默认任务
task default: %w[spec]

desc 'Run RuboCop'
task :lint do
  sh 'rubocop'
end

desc 'Run RSpec tests'
task :spec do
  sh 'rspec'
end

desc 'Build the gem'
task :build do
  sh 'gem build kutils.gemspec'
end

desc 'Release the gem (build, push)'
task :release do
  sh 'gem build kutils.gemspec'
  sh 'gem push kutils-*.gem'
end

desc 'Generate YARD API docs'
task :yard do
  sh 'yard doc --output-dir docs/yardoc'
end

desc 'Serve YARD docs locally'
task 'yard:serve' do
  sh 'yard server --reload'
end

desc 'Deploy YARD docs to gh-pages'
task 'yard:deploy' do
  sh 'git checkout gh-pages'
  sh 'cp -r docs/yardoc/* .'
  sh 'git add .'
  sh "git commit -m 'Update YARD docs'"
  sh 'git push origin gh-pages'
  sh 'git checkout -'
end

desc 'Push to main'
task :push do
  sh 'git add .'
  sh "git commit -m 'Update #{Time.now}'"
  sh 'git pull'
  sh 'git push origin main'
end
