class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: %I[new create]

  def new
    @user = User.new
  end

  def create
    user = User.authenticate(params[:user])
    if user.present?
      session[:user_id] = user.id
      redirect_to planets_path, notice: 'Добро пожаловать!'
    else
      @user = User.new
      flash[:alert] = 'Неправильный логин/пароль'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'До свиданья!'
  end
end
