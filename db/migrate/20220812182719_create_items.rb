class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title
      t.string :year
      t.string :genre
      t.references :watchlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
