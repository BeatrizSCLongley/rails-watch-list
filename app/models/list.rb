class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews

  # Cloudinary:
  has_one_attached :photo

  # Validations:
  validates :name, uniqueness: true, presence: true
end
