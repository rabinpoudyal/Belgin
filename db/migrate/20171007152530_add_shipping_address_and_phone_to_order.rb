class AddShippingAddressAndPhoneToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :shipping_address, :string
    add_column :orders, :phone, :string
  end
end
