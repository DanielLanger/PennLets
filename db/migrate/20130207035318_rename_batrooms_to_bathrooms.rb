class RenameBatroomsToBathrooms < ActiveRecord::Migration
  def up
  	rename_column :listings, :batrooms, :bathrooms
  end

  def down
  	rename_column :listings, :bathrooms, :batrooms
  end
end
