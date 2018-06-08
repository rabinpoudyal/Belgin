class AddPhoneToShop < ActiveRecord::Migration[5.1]
  def change
    add_column :shops, :phone, :string
  end
end
