require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  post '/' do
    @pl_text = PigLatinizer.new(params[:user_text])
    erb :piglatinize
  end
end
