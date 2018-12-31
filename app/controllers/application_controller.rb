class ApplicationController < ActionController::Base
  PAGE_TITLE = "Космическое агентство «ПрофПорт-Экспедиции»"

  before_action :authenticate_user!

  include Pundit

  rescue_from Pundit::NotAuthorizedError do
    redirect_to root_path, alert: 'Недостаточно прав!'
  end

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
