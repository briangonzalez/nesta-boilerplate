set :application, 'nestabp.'
set :repository, "git://github.com/briangonzalez/nesta-boilerplate.git"  # Your clone URL
set :location, "briangonzalez.org"
set :deploy_to, "/srv/www/#{application}#{location}"
role :web, location                          # Your HTTP server, Apache/etc
role :app, location                          # This may be the same as your `Web` server