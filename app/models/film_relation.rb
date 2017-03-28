class FilmRelation < ApplicationRecord
  validates :origin_film_id, presence: true
  validates :related_film_id, presence: true
  validates :origin_film_id, uniqueness: { scope: :related_id }

  belongs_to :origin_film,
    class_name: :Film

  belongs_to :related_film,
    class_name: :Film,
    foreign_key: :related_id
end