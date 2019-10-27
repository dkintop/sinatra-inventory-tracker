class ItemsController <ApplicationController


get '/items' do 
    @items = Item.all  #eventually you will make this so only the items from the store that the user belongs to will display.
    erb :'/items/index'
end


get '/posts/new' do

    erb:'posts/new'
end


get '/items/:id' do 
    @item = Item.find_by_id(params['id'])
    erb :'items/show'
end




end 