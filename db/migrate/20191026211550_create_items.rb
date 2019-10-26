class CreateItems < ActiveRecord::Migration
  def change

    create_table :items do |t|

      t.string :name 
      t.float :price
      t.integer :count
      t.integer :store_id
    end

  end
end
