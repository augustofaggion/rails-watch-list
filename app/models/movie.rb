class Movie < ApplicationRecord
  # Association
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  # Validation
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
