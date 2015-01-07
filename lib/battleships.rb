require 'sinatra'

class BattleShips < Sinatra::Base
  
  get '/' do
    erb :index
  end

  get '/new' do
    # erb :name
    # @name = params[:name
     erb :name
  end

  post '/new' do
    if params[:user].empty?
      @error = "You didn't enter a name"
      erb :name
    else
      @user = params[:user]
      erb :start
    end

  end

  get '/start' do
    erb :start 
  end

  get '/try_again' do
    erb :try_again
  end

  get '/position' do
    @coordinate = params[:start]
    erb :position2
  end  

  # start the server if ruby file executed directly
  # run! if app_file == $0
end
