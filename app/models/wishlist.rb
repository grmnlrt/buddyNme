class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wants
  validates :user, :name, presence: true
end
