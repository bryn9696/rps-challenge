require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'
require './lib/results.rb'

class Rps < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

    # our routes would go here
    before do
      @game = Game.instance
    end
  
    get '/' do
      erb(:index)
    end
  
    post '/gamemode' do
      session[:gamemode] = params[:mode]
      redirect '/getnames'
    end
  
    get '/getnames' do
      erb(:names)
    end
  
    post '/setnames' do
      Game.start_game(params[:player_1])
      Game.start_game(params[:player_2])
      redirect '/play'
    end
  
    get '/play' do
      @game_mode = session[:gamemode]
      erb(:play)
    end
  
    post '/player1_move' do
      @game.player1.makemove(params[:move])
      redirect '/play'
    end
  
    post '/player2_move' do
      @game.player2.makemove(params[:move])
      redirect '/play'
    end
    # # Start the server if this file is executed directly (do not change the line below)
    run! if app_file == $0
  
  end