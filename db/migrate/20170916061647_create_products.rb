class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :inventory
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :products, :name
  end
end
