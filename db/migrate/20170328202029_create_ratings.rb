class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :value
      t.integer :film_id

      t.timestamps
    end
  end
end
