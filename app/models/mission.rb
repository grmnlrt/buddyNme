class Mission < ApplicationRecord
  CATEGORIES = ["Sport", "Game", "Cultural", "Special Event", "Party", "Work", "Help", "Holidays", "Music", "Other"]
  belongs_to :user
  has_one :booking
  validates :title, presence: true
  validates :category, presence: true
  validates :category, :inclusion => {:in => CATEGORIES}
  validates :date, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end



