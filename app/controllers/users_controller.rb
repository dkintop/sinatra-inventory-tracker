class UsersController < ApplicationController

get '/Users/registrations/signup' do

erb :'/Users/registrations/signup'
end

post 'Users/registrations' do 
binding.pry

end 
    
end