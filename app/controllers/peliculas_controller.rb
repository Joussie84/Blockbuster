class PeliculasController < ApplicationController
  def index
    @peliculas = Pelicula.all
  end

  def new
    @pelicula = Pelicula.new
    @clientes = Cliente.all
  end

  def create
    @pelicula = Pelicula.new(pelicula_params)

    if @pelicula.save
      redirect_to peliculas_path, notice: 'Película creada exitosamente.'
    else
      @clientes = Cliente.all
      render :new
    end
  end 

  def edit
    @pelicula = Pelicula.find(params[:id])
    @clientes = Cliente.all
  end

  def update
    @pelicula = Pelicula.find(params[:id])
    if @pelicula.update(pelicula_params)
      redirect_to peliculas_path, notice: 'Película actualizada exitosamente.'
    else
      render :edit
    end
  end

  private

  def pelicula_params
    params.require(:pelicula).permit(:titulo, :cliente_id)
  end
end
