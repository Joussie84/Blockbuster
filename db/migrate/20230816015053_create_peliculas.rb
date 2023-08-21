class CreatePeliculas < ActiveRecord::Migration[7.0]
  def change
    create_table :peliculas do |t|
      t.string :titulo
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
