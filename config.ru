require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

# The project root directory
root = ::File.dirname(__FILE__)

# Compile Sass on the fly with the Sass plugin.
require 'sass'
require 'sass/plugin/rack'

Compass.add_project_configuration(root + '/config/compass.config')
Compass.configure_sass_plugin!

use Sass::Plugin::Rack  # Sass Middleware

# Nice looking 404s and other messages
use Rack::ShowStatus

# Nice looking errors
use Rack::ShowExceptions

use Rack::ConditionalGet
use Rack::ETag

require 'nesta/env'
Nesta::Env.root = ::File.expand_path('.', ::File.dirname(__FILE__))

require 'nesta/app'
run Nesta::App
