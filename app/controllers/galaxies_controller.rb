class GalaxiesController < ApplicationController
  def index
    @galaxies = Galaxy.all
  end

  def new
    @galaxy = Galaxy.new
  end

  def create
    @galaxy = Galaxy.new galaxy_params
    if @galaxy.save
      redirect_to galaxies_path, notice: 'Сохранение прошло успешно'
    else
      flash[:alert] = "Ошибка при сохранении"
      render :new
    end
  end

  private

  def galaxy_params
    params.require(:galaxy).permit(:title)
  end
end
