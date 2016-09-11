require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :'index.html'
  end

  post "/" do
    @igros = Igros.new(params[:x3], params[:x5],params[:x7])
    erb :'index.html'
  end

end
