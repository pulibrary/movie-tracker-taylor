class AddListNameToWatchlist < ActiveRecord::Migration[6.1]
  def change
    add_column :watchlists, :list_name, :string
  end
end
