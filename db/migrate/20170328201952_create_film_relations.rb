class CreateFilmRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :film_relations do |t|
      t.integer :origin_film_id
      t.integer :related_id

      t.timestamps
    end
  end
end
