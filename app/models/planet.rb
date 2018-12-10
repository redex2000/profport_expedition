class Planet < ApplicationRecord
  has_many :itinerary_entries
  has_many :itineraries, through: :itinerary_entries

  scope :accessible, -> { where(available: true) }
end
