class Orderitem < ActiveRecord::Base
    belongs_to :order
    belongs_to :menu
    def top
        Orderitem.limit(2)
    end
end