class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true

  # before_destroy :destroy_saved_movies

  # private

  # def destroy_saved_movies
  #   self.movies.each do |movie|
  #     movie.destroy if movie.lists.count == 1
  #   end
  # end
end
