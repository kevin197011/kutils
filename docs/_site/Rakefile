require 'time'

task default: %w[push]

task :push do
  system 'git add .'
  system "git commit -m 'Update #{Time.now}'"
  system 'git pull'
  system 'git push origin main'
end

task :run do
  system 'bundle exec jekyll serve'
end
