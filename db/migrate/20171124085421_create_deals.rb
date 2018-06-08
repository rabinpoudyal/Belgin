class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
      t.datetime :start
      t.datetime :end
      t.integer :percentage, default: 0
      t.references :product, foreign_key: true
      t.text :condition

      t.timestamps
    end
  end
end
