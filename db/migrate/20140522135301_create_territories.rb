class CreateTerritories < ActiveRecord::Migration
  def change
    create_table :territories do |t|
      t.string :description
      t.string :city
      t.string :coordinates
      t.integer :publisher_id

      t.timestamps
    end
  end
end
