server 'vagrant', user: 'find_friend', roles: %w[app db web] #установить ip server
set :stage, :production
set :nvm_type, :user # or :system, depends on your nvm setup
set :nvm_node, 'v8.12.0'
set :nvm_map_bins, %w[node npm yarn]
set :rvm_ruby_version, '2.6.0'

ask :branch, 'master'
