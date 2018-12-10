class AddAvailablePlanets < ActiveRecord::Migration[5.2]
  def change
    add_column :planets, :available, :boolean, default: true
  end
end
