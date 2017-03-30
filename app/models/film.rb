class Film < ApplicationRecord
  validates :title, :description, :url_slug, :year, presence: true
  validates :url_slug, uniqueness: true

  has_many :film_relations,
    foreign_key: :origin_film_id

  has_many :related_films,
    through: :film_relations,
    source: :related_film

  has_many :ratings

  def average_rating
    ratings.average(:value) 
  end
end