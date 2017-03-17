class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.integer :pincode
      t.integer :mobile, limit: 11
      t.integer :user_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
