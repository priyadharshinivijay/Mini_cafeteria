require 'bcrypt'
class User < ActiveRecord::Base
    has_secure_password
    has_many :orders
    has_many :orderitems, through: :orders
end