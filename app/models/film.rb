class Film < ApplicationRecord
  validates :title, :description, :url_slug, :year, presence: true
  validates :url_slug, uniqueness: true

  has_many :film_relations

  has_many :related_films,
    through: :film_relations,
    source: :related_id

  has_many :ratings
end