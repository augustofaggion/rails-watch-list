class Movie < ApplicationRecord
  # Association
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  has_one_attached :photo
  # Validation
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end

#movie.photo
