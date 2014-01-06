class AddTermToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :term, :string
  end
end
