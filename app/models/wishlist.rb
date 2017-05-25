class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wants
  has_many :missions, through: :wants
  validates :user, :name, presence: true
end
