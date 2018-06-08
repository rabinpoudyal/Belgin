class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
