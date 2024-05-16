class List < ApplicationRecord
  # Association
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # Validation
  validates :name, uniqueness: true, presence: true

  def movie_not_list
    Movie.all.reject { |movie| self.movies.include?(movie) }
  end
end
