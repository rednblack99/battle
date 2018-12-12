require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @p1name = params[:player_1_name]
    @p2name = params[:player_2_name]
    
    erb(:display_names)
  end

  run! if app_file == $0

end