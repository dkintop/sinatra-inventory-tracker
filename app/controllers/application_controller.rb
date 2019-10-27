require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :sessions_secret, "thisisnogood"
  end




  get "/" do
    erb :'Users/users/home'
  end

end
