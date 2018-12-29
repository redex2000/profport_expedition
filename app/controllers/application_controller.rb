class ApplicationController < ActionController::Base
  PAGE_TITLE = "Космическое агентство «ПрофПорт-Экспедиции»"

  before_action :authenticate_user!


  private

  def authenticate_user!
    unless session[:user_id].present?
      redirect_to new_session_path, alert: 'Вы не космонавт!'
    end
  end
end
