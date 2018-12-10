class CreateItineraryEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :itinerary_entries do |t|
      t.integer :weight, null: false, default: 1
      t.belongs_to :planet, foreign_key: true
      t.belongs_to :itinerary, foreign_key: true

      t.timestamps
    end

    add_index :itinerary_entries, [:weight, :itinerary_id], unique: true
    add_index :itinerary_entries, [:itinerary_id, :planet_id], unique: true, name: 'itinerary_planet_ids_unique'
  end
end
