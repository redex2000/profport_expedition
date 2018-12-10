class Itinerary < ApplicationRecord
  belongs_to :expedition
  has_many :itinerary_entries
  has_many :planets, through: :itinerary_entries
end
