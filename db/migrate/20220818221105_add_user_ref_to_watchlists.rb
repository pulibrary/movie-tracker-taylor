class AddUserRefToWatchlists < ActiveRecord::Migration[6.1]
  def change
    add_reference :watchlists, :user, null: false, foreign_key: true
  end
end
