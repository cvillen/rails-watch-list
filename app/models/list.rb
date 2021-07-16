class List < ApplicationRecord
  CATEGORIES = %w[Drama Comedy Classic Favourites Horror Sci-fi Action Thriller Documentary Animation Musical Western Romance Biography]
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_one_attached :photo

  validates :name, uniqueness: true, presence: true
end
