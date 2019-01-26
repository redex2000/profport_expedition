module Api::V1
  class ExpeditionsController < ApiController
    def index
      render json: ::V1::ExpeditionSerializer.new(Expedition.all).serialized_json
    end
  end
end