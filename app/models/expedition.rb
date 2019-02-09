class Expedition < ApplicationRecord
  has_many :spaceships, dependent: :destroy
  has_one :itinerary, dependent: :destroy

  validates :title, presence: true, uniqueness: true

  before_save :change_title
  after_create :create_assocs
  after_create :notify


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

  def notify
    ActionCable.server.broadcast ExpeditionsChannel::TITLE, partial: ActionController::Base.renderer.render(partial: "expeditions/expedition", object: self)
  end
end