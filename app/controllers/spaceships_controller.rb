class SpaceshipsController < ApplicationController
  before_action :set_spaceship, except: [:new, :create, :index]

  def index
    @spaceships = Spaceship.all
  end

  def show
  end

  def new
    @spaceship = Spaceship.new
  end

  def create
    @spaceship = Spaceship.new spaceship_params
    if @spaceship.save
      redirect_to spaceships_path, notice: 'Сохранение прошло успешно'
    else
      flash[:alert] = 'Во время сохранения произошли ошибки'
      render :new
    end
  end

  def edit
  end

  def update
    if @spaceship.update spaceship_params
      redirect_to spaceships_path, notice: 'Сохранение прошло успешно'
    else
      flash[:alert] = 'Во время сохранения произошли ошибки'
      render :edit
    end
  end

  def destroy
    @spaceship.destroy
    if @spaceship.destroyed?
      flash[:notice] = 'Удалено'
    else
      flash[:alert] = 'Ошибка удаления'
    end
    redirect_to spaceships_path
  end

  private


  def set_spaceship
    @spaceship = Spaceship.find params[:id]
  end


  def spaceship_params
    params.require(:spaceship).permit(:title, :expedition_id, :velocity)
  end
end
