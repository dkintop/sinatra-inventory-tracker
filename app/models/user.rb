class User < ActiveRecord::Base 
    belongs_to :store
    has_secure_password
    validates :username, uniqueness: true
    validates :username, presence: true
    validates :password, presence: true 
    validates :name, presence: true
end