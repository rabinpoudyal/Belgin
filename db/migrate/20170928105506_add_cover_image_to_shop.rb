class AddCoverImageToShop < ActiveRecord::Migration[5.1]
  def change
    add_column :shops, :cover_img_url, :string
  end
end
