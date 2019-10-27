class ItemsController <ApplicationController


get '/items' do 
    @items = Item.all  #eventually you will make this so only the items from the store that the user belongs to will display.
    erb :'/items/index'
end


get '/items/new' do

    erb :'items/new'
end


get '/items/:id' do 
    @item = Item.find_by_id(params['id'])
    erb :'items/show'
end

post '/items' do 
    #here you will create new items and assign their store base on the store that the current user belongs to.
end 




end 