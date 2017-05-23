class Booking < ApplicationRecord
  belongs_to :mission
  belongs_to :user
  validates :user, :date, :mission, presence: true
end
