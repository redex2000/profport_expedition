class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.float :route_length
      t.belongs_to :expedition, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
