require 'compass'
require 'compass-h5bp'
require 'haml'
require 'sass'
Dir["lib/**/*.rb"].each {|f| require "./#{f}"}

module Nesta
  class App
    use Rack::Static, :urls => ['/nestabp-theme'], :root => 'themes/nestabp-theme/public'
    
    configure do
      # Default Haml format is :xhtml. Let's change that.
      set :haml, { :format => :html5 }
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