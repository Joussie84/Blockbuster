class ClientesController < ApplicationController
  def index
    @clientes = Cliente.includes(:peliculas)
  end

  def new
    @cliente = Cliente.new
  end

  def create
    @cliente = Cliente.new(cliente_params)
    if @cliente.save
      redirect_to clientes_path, notice: 'Cliente creado exitosamente.'
    else
      render :new
    end
  end

  def edit
    @cliente = Cliente.find(params[:id])
  end

  def update
    @cliente = Cliente.find(params[:id])
    if @cliente.update(cliente_params)
      redirect_to clientes_path, notice: 'Cliente actualizado exitosamente.'
    else
      render :edit
    end
  end

  private

  def cliente_params
    params.require(:cliente).permit(:nombre, :pelicula_arrendada)
  end
end
