class User < ApplicationRecord
  has_many :watchlists, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
