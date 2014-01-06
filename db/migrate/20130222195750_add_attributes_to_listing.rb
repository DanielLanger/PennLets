class AddAttributesToListing < ActiveRecord::Migration
  def change
  	add_column :listings, :air_conditioning, :boolean
  	add_column :listings, :parking, :boolean
  	add_column :listings, :washer_dryer, :boolean
  	add_column :listings, :private_bathroom, :boolean
  	rename_column :listings, :rooms, :total_rooms
  	add_column :listings, :available_rooms, :integer
  end
end
