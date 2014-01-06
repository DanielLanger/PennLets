class AddUtilitiesToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :utilities, :boolean
  end
end
