class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.float :price
      t.integer :total_rooms
      t.integer :bathrooms
      t.boolean :furnished
      t.string :term
      t.boolean :negotiable
      t.boolean :utilities
      t.boolean :air_conditioning
      t.boolean :parking
      t.boolean :washer_dryer
      t.boolean :private_bathroom
      t.integer :available_rooms
      t.string :new
      t.string :show

      t.timestamps
    end
  end
end
