class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews

  # Validations:
  validates :name, uniqueness: true, presence: true
end
