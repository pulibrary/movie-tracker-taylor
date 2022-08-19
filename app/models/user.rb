class User < ApplicationRecord
  has_many :watchlists, dependent: :destroy
  validates_presence_of :email, :password

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
end
