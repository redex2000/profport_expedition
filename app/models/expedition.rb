class Expedition < ApplicationRecord
  has_many :spaceships
  has_one :itinerary, dependent: :destroy

  validates :title, presence: true, uniqueness: true

  before_save :change_title
  after_create :create_assocs


  def total_length
    itinerary.planets.sum(:distance)
  end

  private

  def change_title
    self.title = "Экспедиция: #{self.title.downcase}"
  end


  def create_assocs
    create_itinerary
  end
end