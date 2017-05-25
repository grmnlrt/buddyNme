class Mission < ApplicationRecord
  belongs_to :user
  has_one :booking
  validates :title, presence: true
  validates :category, presence: true
  validates :category, :inclusion => {:in => ["Sport", "Game", "Cultural", "Special Event", "Party", "Work", "Help", "Holidays", "Music", "Other"]}
  validates :date, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?


  def book?
    book
  end

  def mark_as_book!
    self.book = true
    self.save
  end
end



