class Orderitem < ActiveRecord::Base
    belongs_to :order
    belongs_to :menu
end