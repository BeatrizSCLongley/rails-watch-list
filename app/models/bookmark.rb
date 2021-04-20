class Bookmark < ApplicationRecord
  # movie N:N list - a movie has many lists and lists has many movies
  # 1:N through bookmark
  belongs_to :movie
  belongs_to :list

  # Validations:
  validates :comment, length: { minimum: 6 }
  # scope option - to specify one or more attributes that are used to limit the uniqueness
  # A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique
  # because a list has many movies through bookmarks, the scope illustrates this relationship
  validates :movie_id, uniqueness: { scope: :list_id, message: 'is already in the list' }
end
