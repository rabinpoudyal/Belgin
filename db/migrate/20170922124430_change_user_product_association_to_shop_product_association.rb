class ChangeUserProductAssociationToShopProductAssociation < ActiveRecord::Migration[5.1]
  def up
  	remove_column :products, :user_id
  	add_column :products, :shop_id, :integer, :index => true, :foreign_key => true 
  end

  def down
  	add_column :products, :user_id, :index => true, :foreign_key => true
  	remove_column :products, :shop_id
  end

end
