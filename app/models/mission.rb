class Mission < ApplicationRecord
  AVATARS = ['anne.jpg', 'seb.jpg', 'romain.jpeg']
  PICS = ['brussels.jpeg', 'london.jpeg', 'paris.jpg']
  belongs_to :user
  has_many :bookings
  validates :category, :title, presence: true
end
