class Store < ActiveRecord::Base 
has_many :users
has_many :items
validates :name, uniqueness: true 
validates :name, presence: true 
validates :location, presence: true
end