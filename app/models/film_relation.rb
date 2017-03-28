class FilmRelation < ApplicationRecord
  validates :origin_film_id, presense: true
  validates :related_film_id, presense: true
  validates :origin_film_id, uniqueness: { scope: :related_film_id }

  belongs_to :origin_film,
    class_name: :Film,
    foreign_key: :origin_film_id

  belongs_to :related_film,
    class_name: :Film,
    foreign_key: :related_film_id
end