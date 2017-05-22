class Mission < ApplicationRecord
  belongs_to :user
  validates :category, :title, presence: true
end
