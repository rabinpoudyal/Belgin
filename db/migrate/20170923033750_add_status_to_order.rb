class AddStatusToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :status, :string, default: "Processing", null: false
  end
end
