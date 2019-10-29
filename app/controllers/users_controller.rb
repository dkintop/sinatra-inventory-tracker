class UsersController < ApplicationController

get '/Users/registrations/signup' do

erb :'/Users/registrations/signup'
end

post '/Users/registrations/Users/registrations' do 
    @error = nil
    @user= User.new 
    @user.username = params[:username] 
    @user.password = params[:password]
    @user.store = Store.find_by_id(params[:store_id]) #this form gets info posted from user signup.erb
    @user.name = params[:name]
    if @user.save
    redirect to '/login'
        
    else 
        
        @error = @user.errors.full_messages.first
        erb :'/users/registrations/error_page'
        
    end
end





get '/login' do 
    erb :'Users/sessions/login'
end

post '/login' do 
    @error= nil
    @user = User.find_by(username: params[:username])
    
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        
        redirect "users/user/#{@user.id}"
    else
       
       
        erb :'users/sessions/error_page'
    end
    
end 

get '/users/user/:id' do 
    
    if logged_in?
    @user = User.find_by_id(params[:id])
    @store = Store.find_by(id: @user.store_id)
    
    erb :'users/user/show'
    else 
        redirect '/login'
    end
end

get '/logout' do 
    session.clear
    redirect '/'
end



    
end