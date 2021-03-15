class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :u_name
      t.string :u_email
      t.string :password_digest
      t.string :u_role
    end
  end
end
