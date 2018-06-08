class CreateShop < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :location
      t.string :description
      t.integer :rating
      t.boolean :delivery_service, default: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
