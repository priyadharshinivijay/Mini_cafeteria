class AddOrderStatusToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :o_status, :boolean, default: false
  end
end
