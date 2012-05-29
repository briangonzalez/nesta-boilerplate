require 'capistrano/ext/multistage'
require 'capistrano_colors'

set :stages,        %w(staging production)
set :default_stage, "staging"

default_run_options[:pty] = true  # Must be set for the password prompt from git to work
set :deploy_via, :remote_cache
set :branch, "master"
set :scm, "git"
set :user, "root"  # The server's user for deploys
ssh_options[:forward_agent] = true




# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end