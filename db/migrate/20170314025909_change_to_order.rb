class ChangeToOrder < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :mobile, :integer, limit: 11
  end
end
