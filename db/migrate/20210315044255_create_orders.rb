class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.bigint :user_id
      t.date :order_date
    end
  end
end
