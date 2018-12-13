class Itinerary < ApplicationRecord
  belongs_to :expedition
  has_many :itinerary_entries
  has_many :planets, through: :itinerary_entries

  def route_length
    self[:route_length].to_f > 0 ? self[:route_length].to_f : planets.sum(:distance)
  end
end
