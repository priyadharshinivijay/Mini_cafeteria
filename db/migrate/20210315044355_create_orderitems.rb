class CreateOrderitems < ActiveRecord::Migration[5.1]
  def change
    create_table :orderitems do |t|
      t.bigint :order_id
      t.bigint :menu_id
      t.string :menu_name
      t.integer :menu_price
    end
  end
end
