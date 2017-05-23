class Mission < ApplicationRecord
  belongs_to :user
  has_one :booking
  validates :category, :title, presence: true
  mount_uploader :photo, PhotoUploader
end
