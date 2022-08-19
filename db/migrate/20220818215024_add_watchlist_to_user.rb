class AddWatchlistToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :watchlist, foreign_key: true
  end
end
