class SiteController < ApplicationController
  def hello
    render plain: 'Привет, контроллер!'
  end

  def about
    redirect_to planets_path
  end
end
