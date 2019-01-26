module Api
  class ApiController < ApplicationController
    include ActionController::HttpAuthentication::Token::ControllerMethods

    skip_before_action :authenticate_user!

    before_action :rest_auth

    private

    def rest_auth
      result = authenticate_with_http_token do |token|
        User.find_by(auth_token: token).present?
      end
      render json: { error: 'Неправильный токен!' }, status: 403 unless result
    end

  end
end