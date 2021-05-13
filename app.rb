require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  
  get '/play' do
    @game = $game
    erb(:play)
  end
  
  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect('/play')
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    @game.switch_player
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end