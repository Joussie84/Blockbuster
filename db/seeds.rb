# Generar clientes con películas arrendadas
10.times do
    cliente = Cliente.create(nombre: Faker::Name.name, pelicula_arrendada: false)
    rand(2).times do
      pelicula = Pelicula.create(titulo: Faker::Movie.title, cliente: cliente)
      cliente.update(pelicula_arrendada: true)
    end
  end
  