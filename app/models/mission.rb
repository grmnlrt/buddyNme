class Mission < ApplicationRecord
  belongs_to :user
  has_one :booking
  validates :category, :title, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
