require 'sinatra'

class BattleShips < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  get '/new' do
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
    # session[:counter] = 0
    # @counter = session[:counter]
    session[:ship_coord] = []
    erb :start 
  end

  post '/start' do
    # session[:counter] += 1
    # @counter = session[:counter]

    if params[:coordinate].empty?
      @error_coord = "You didn't enter a co-ordinate"
      erb :start
    else
      @coordinate = params[:coordinate]
      session[:ship_coord] << @coordinate
      @ship_coord = session[:ship_coord]
      erb :start
    end
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
