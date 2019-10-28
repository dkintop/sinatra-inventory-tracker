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





get '/login' do 
    erb :'Users/sessions/login'
end

post '/login' do #current problem is that our session[:user_id] is not peristing after we get redirected for some reason. Also need help with making sure that username is unique so that multiple users cannot have save username.
   
    @user = User.find_by(username: params[:username])
    
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        binding.pry
        redirect "users/user/#{@user.id}"
    else
        redirect '/login'
    end
    
end 
#probelm is that user_id is being dropped from the session after redirect.
get '/users/user/:id' do 
    binding.pry
    if logged_in?
    @user = User.find_by_id(params[:id])
    @store = Store.find_by(id: @user.store_id)
    binding.pry
    erb :'users/user/show'
    else 
        redirect '/login'
    end
end

    
end