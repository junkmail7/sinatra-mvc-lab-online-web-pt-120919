require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  post '/' do
    @pl_text = PigLatinizer.new(params[:user_phrase])
    erb :piglatinize
  end
end
