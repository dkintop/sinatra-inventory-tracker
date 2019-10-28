class UsersController < ApplicationController

get '/Users/registrations/signup' do

erb :'/Users/registrations/signup'
end

post '/Users/registrations/Users/registrations' do 
    @user= User.new 
    @user.username = params[:username] 
    @user.password = params[:password]
    @user.store = Store.find_by_id(params[:store_id]) #this form gets info posted from user signup.erb
    @user.name = params[:name]
    @user.save
    redirect to '/login'
end

get '/Users/:id' do 
    if logged_in?
    @user = User.find_by_id(params[:id])
    @store = Store.find_by(id: @user.store_id)
    erb :'Users/users/show'
    else 
        redirect '/login'
    end
end



get '/login' do 
    erb :'Users/sessions/login'
end

post '/login' do #current problem is that our session[:user_id] is not being setfor some reason.
    
    user = User.find_by(username: params[:username])
    
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect "/Users/#{user.id}"
    else
        redirect '/login'
    end
    
end

    
end