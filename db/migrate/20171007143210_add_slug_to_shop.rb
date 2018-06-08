class AddSlugToShop < ActiveRecord::Migration[5.1]
  def change
    add_column :shops, :slug, :string, :unique => true
  end
end
