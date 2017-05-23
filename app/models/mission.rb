class Mission < ApplicationRecord
  AVATARS = ['anne.jpg', 'seb.jpg', 'romain.jpeg']
  PICS = ['brussels.jpeg', 'london.jpeg', 'paris.jpg']
  belongs_to :user
  validates :category, :title, presence: true
  mount_uploader :photo, PhotoUploader
end
