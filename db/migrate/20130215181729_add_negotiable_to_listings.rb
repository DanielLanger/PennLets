class AddNegotiableToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :negotiable, :boolean
  end
end
