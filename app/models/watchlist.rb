class Watchlist < ApplicationRecord
  has_many :items, dependent: :destroy
  belongs_to :users
  validates_presence_of :list_name
end
