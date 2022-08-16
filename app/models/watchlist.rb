class Watchlist < ApplicationRecord
  has_many :items, dependent: :destroy
  validates_presence_of :list_name
end
