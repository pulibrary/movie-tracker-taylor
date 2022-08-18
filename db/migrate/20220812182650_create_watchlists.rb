class CreateWatchlists < ActiveRecord::Migration[6.1]
  def change
    create_table :watchlists do |t|
      t.string "list_name"
      t.timestamps
      t.references :user, null: false, foreign_key: true
    end
  end
end
