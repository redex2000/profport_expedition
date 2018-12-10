class ItineraryEntry < ApplicationRecord
  belongs_to :planet
  belongs_to :itinerary

  validates :weight, numericality: { only_integer: true, greater_than: 0 }, presence: true, uniqueness: { scope: :itinerary_id }
end
