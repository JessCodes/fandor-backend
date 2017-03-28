class Film < ApplicationRecord
  validates :title, :description, :url_slug, :year, presence: true
  validates :url_slug, uniqueness: true

  has_many :film_relations,
    class_name: :FilmRelation,
    foreign_key: :origin_film_id

  has_many :related_films,
    through: :film_relations,
    source: :related_film

  has_many :ratings
end