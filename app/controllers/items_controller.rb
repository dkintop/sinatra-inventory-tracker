class ItemsController <ApplicationController


get '/items' do 
    @items = Item.all.select{|item| item.store == current_user.store}  
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
   if !logged_in?
            redirect '/login'
   else
    @item = Item.new 
   @item.name = params[:name]
   @item.price = params[:price]
   @item.count = params[:count]
   binding.pry
   @item.store = current_user.store
    
    
        if @item.save
        redirect to '/items'
   
        
         
        else
        @error = @item.errors.full_messages.first
            erb :'items/error'
        end
        

    end
end 




end 