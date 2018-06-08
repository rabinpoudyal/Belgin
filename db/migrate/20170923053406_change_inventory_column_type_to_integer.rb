class ChangeInventoryColumnTypeToInteger < ActiveRecord::Migration[5.1]
  def up
  	remove_column :products, :inventory
  	add_column :products, :inventory, :integer
  end

  def down
  	add_column :products, :inventory, :string
  	remove_column :products, :inventory
  end
end
