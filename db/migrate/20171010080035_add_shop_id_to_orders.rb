class AddShopIdToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :shop_id, :integer
    add_index :orders, :shop_id
  end
end
