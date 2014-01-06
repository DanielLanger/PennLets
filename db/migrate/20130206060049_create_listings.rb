class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.float :price
      t.boolean :featured
      t.integer :rooms
      t.integer :batrooms
      t.boolean :furnished

      t.timestamps
    end
  end
end
