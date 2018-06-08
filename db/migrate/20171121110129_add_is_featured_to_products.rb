class AddIsFeaturedToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :is_featured, :boolean, defalut: :false
  end
end
