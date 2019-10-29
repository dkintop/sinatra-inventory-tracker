class Item < ActiveRecord::Base
    belongs_to :store
    validates :name, presence: true
    validates :price, presence: true 
    validates :count, presence: true 
    validates :store_id, presence: true

end
