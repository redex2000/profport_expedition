class SiteController < ApplicationController
  def hello
    @name = "Миша"
  end

  def about
    redirect_to planets_path
  end
end
