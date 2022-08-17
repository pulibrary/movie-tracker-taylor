class Item < ApplicationRecord
  belongs_to :watchlist
  validates_presence_of :title
end
