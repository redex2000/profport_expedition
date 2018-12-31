class ExpeditionsController < ApplicationController
  before_action :set_model, except: [:new, :create, :index]

  def index
    authorize Expedition
    @expeditions = Expedition.all
  end

  def show
  end

  def new
    authorize Expedition
    @expedition = Expedition.new
  end

  def create
    authorize Expedition
    @expedition = Expedition.new expedition_params
    if @expedition.save
      redirect_to expeditions_path, notice: 'Сохранение прошло успешно'
    else
      flash[:alert] = "Ошибка при сохранении"
      render :new
    end
  end

  def edit
  end

  def update
    if @expedition.update expedition_params
      redirect_to expeditions_path, notice: 'Сохранение прошло успешно'
    else
      flash[:alert] = "Ошибка при сохранении"
      render :edit
    end
  end

  def destroy
    @expedition.destroy
    if @expedition.destroyed?
      flash[:notice] = 'Удаление прошло успешно'
    else
      flash[:alert] = 'Ошибка удаления'
    end
    redirect_to expeditions_path
  end


  private

  def set_model
    @expedition = Expedition.find params[:id]
    authorize @expedition
  end

  def expedition_params
    params.require(:expedition).permit(:title)
  end
end
