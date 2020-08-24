require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do
    @latinize = PigLatinizer.new(params[:user_text])
    
    erb :displaypig
  end
end