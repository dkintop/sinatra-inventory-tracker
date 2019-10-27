Store.create(:name => 'IGA', :location => '123 easy st.')

User.create(:name =>"Bob", :username => "BobbyBossMan", :password => '1234', :store => Store.all.last)

Item.create(:name =>'oreos', :price => 3.50, :count => 100, :store => Store.all.first)