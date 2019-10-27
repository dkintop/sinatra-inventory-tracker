class User < ActiveRecord::Base 
    belongs_to :store
    has_secure_password
end