class AddAssociationSpaceshipsExpedition < ActiveRecord::Migration[5.2]
  def change
    create_table :expeditions do |t|
      t.string :title, null: false, index: { unique: true }
    end

    change_table :spaceships do |t|
      t.belongs_to :expedition, foreign_key: true, index: true
    end

  end
end
