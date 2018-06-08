class AddSubdomainToShops < ActiveRecord::Migration[5.1]
  def change
    add_column :shops, :subdomain, :string
  end
end
