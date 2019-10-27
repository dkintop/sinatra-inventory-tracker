class StoresController < ApplicationController
    
    get '/stores' do 
        @stores = Store.all #change this to display only stores that the current user belongs to.
        erb :"stores/index"
    end

    get '/stores/new' do 
        erb :"stores/new"
    end

    post '/stores' do 
        @store = Store.create(:name =>params[:name], :location => params[:location]) 
        redirect to "/stores/#{@store.id}"
    end 

    get '/stores/:id' do 
        @store = Store.find_by_id(params[:id])
        erb :"stores/show"
    end 




end