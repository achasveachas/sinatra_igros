require './config/environment'
require 'rack-flash'


class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, 'igros'
    set :public_folder, 'public'
    set :views, 'app/views'
    use Rack::Flash
  end

  get "/" do
    erb :'index.html'
  end

  post "/" do
    @igros = Igros.new(params[:x3], params[:x5],params[:x7])

    if !integer?(@igros.x3) || !integer?(@igros.x5) || !integer?(@igros.x7)
      flash[:message] = "The inputs have to be whole numbers."
      erb :'index.html'
    elsif @igros.x3.to_i >= 3 || @igros.x5.to_i >= 5 || @igros.x7.to_i >= 7
      flash[:message] = "It seems like your math was off, please try again.<br>See below for an example"
      erb :'index.html'
    else
      erb :'index.html'
    end
  end

  helpers do
    def integer?(string)
      string.to_i.to_s == string
    end
  end
end
