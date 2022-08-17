class AddItemToWatchlist < ActiveRecord::Migration[6.1]
  def change
    add_reference :watchlists, :item, foreign_key: true
  end
end
