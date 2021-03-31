class Menu < ActiveRecord::Base
    validates :menu_name, presence:true, length: {maximum: 10}
    validates :menu_price, presence:true
end
