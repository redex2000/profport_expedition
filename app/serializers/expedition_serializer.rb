class ExpeditionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title

  attribute :route_length do |object|
    object&.itinerary&.route_length.to_i
  end

  has_many :spaceships
end
