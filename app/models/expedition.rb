class Expedition < ApplicationRecord
  has_many :spaceships

  validates :title, presence: true, uniqueness: true

  before_save :change_title

  private

  def change_title
    self.title = "Экспедиция: #{self.title.downcase}"
  end
end