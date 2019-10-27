class UsersController < ApplicationController

get '/Users/registrations/signup' do

erb :'/Users/registrations/signup'
end

post '/Users/registrations/Users/registrations' do 
    @user= User.new 
    @user.username = params[:username] 
    @user.password = params[:password]
    @user.store = Store.find_by_id(params[:store_id])
    @user.name = params[:name]
    @user.save
    session[:user_id]= @user.id
    if session[:user_id] == @user.id
    redirect to "/Users/#{@user.id}"
    end
end

get '/Users/:id' do
    binding.pry
    @user = User.find_by_id(params[:id])
    @store = @user.store
   
    erb :'Users/users/show'
    
end


    
end