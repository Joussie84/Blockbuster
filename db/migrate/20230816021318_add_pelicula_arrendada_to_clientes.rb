class AddPeliculaArrendadaToClientes < ActiveRecord::Migration[7.0]
  def change
    add_column :clientes, :pelicula_arrendada, :boolean
  end
end
