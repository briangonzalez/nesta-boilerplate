require 'compass'
require 'compass-h5bp'
require 'haml'
require 'sass'
require 'yaml'
Dir["lib/**/*.rb"].each {|f| require "./#{f}"}

module Nesta
  class App
    nesta_config = YAML::load(File.open(File.join("config", "config.yml")))
    use Rack::Static, :urls => ['/' + nesta_config['theme']], :root => 'themes/' + nesta_config['theme'] + '/public'
    
    configure do
      # Default Haml format is :xhtml. Let's change that.
      set :haml, { :format => :html5 }
    end

    helpers do
      def path
        request.path
      end

      def current_url
        request.url
      end
    end

    configure :production do
      set :haml, { :ugly => true }
    end

    get '/css/:sheet.css' do
      content_type 'text/css', :charset => 'utf-8'
      cache sass(params[:sheet].to_sym, Compass.sass_engine_options)
    end

  end
end