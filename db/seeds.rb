Store.create(:name => 'IGA', :location => '123 easy st.')

User.create(:name =>"Bob", :username => "BobbyBossMan", :password => '1234', :store => Store.all.last)

