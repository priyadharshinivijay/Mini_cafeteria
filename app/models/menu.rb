class Menu < ActiveRecord::Base
    validates :menu_name, presence:true
    validates :menu_price, presence:true
end
