class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  # validates :movie, presence: true
  # validates :list, presence: true
  validates :movie, uniqueness: { scope: :list }

  # before_destroy :ensure_not_referenced_by_any_bookmark

  # private

  # def ensure_not_referenced_by_any_bookmark
  #   unless bookmarks.empty?
  #     errors.add(:base, 'Bookmarks present for this movie')
  #     throw :abort
  #   end
  # end
end
