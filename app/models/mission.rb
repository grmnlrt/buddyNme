class Mission < ApplicationRecord
  belongs_to :user
  validates :category, :title, presence: true
  mount_uploader :photo, PhotoUploader
end
