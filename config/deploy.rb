# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, 'find_friends'
set :repo_url, 'git@github.com:Kon0pelka/FindFriend.git'
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :ssh_options, forward_agent: true
set :rvm_ruby_version, '2.6.0@example'
set :rake,            "rvm use #{fetch(:rvm_ruby_version)} do bundle exec rake"
set :bundle_cmd,      "rvm use #{fetch(:rvm_ruby_version)} do bundle"
set :use_sudo,        false

after 'deploy', 'deploy:cleanup'

set :deploy_to, '/var/www/findfriends'

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'storage'
append :linked_files, 'config/database.yml', 'config/application.yml', 'config/master.key'
