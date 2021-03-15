class OrdersController < ApplicationController
    def index
        render "index"
    end
    def create
        id=current_user.id
        new_order = Order.create!(user_id:id,order_date:params[:order_date])
        new_order_item = Orderitem.create!(order_id: new_order.id,
            menu_id: params[:menu_id],
            menu_name: params[:menu_name],
            menu_price: params[:menu_price]
            )
        
    end
end
