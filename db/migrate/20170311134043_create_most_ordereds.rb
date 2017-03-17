class CreateMostOrdereds < ActiveRecord::Migration[5.0]
  def change
    create_table :most_ordereds do |t|
      t.integer :product_id
      t.integer :frequency

      t.timestamps
    end
  end
end
