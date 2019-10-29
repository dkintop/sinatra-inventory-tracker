class ItemsController <ApplicationController


get '/items' do 
    @items = Item.all.select{|item| item.store == current_user.store} 
    
    erb :'items/index'
end


get '/items/new' do

    erb :'items/new'
end


get '/items/:id' do 
    @item = Item.find_by_id(params['id'])
    @id = params['id']
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
   @item.store = current_user.store
        if @item.save
        redirect to '/items'
            
        else
        @error = @item.errors.full_messages.first
            erb :'items/error'
        end
        

    end
end 

get "/items/:id/edit" do 
    if logged_in?
    @item = Item.find_by_id(params[:id])
    erb :'items/edit'
    else
        redirect '/login'
    end
end 

patch '/items/:id' do 
    @item = Item.find_by_id(params[:id])
    @item.name = params[:name]
    @item.price = params[:price]
    @item.count = params[:count] 
    @item.save 
    redirect to "/items/#{@item.id}"
end



end 