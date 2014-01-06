class RemoveNewAndShowFromFilters < ActiveRecord::Migration
  def up
  	remove_column :filters, :new
  	remove_column :filters, :show
  end

  def down
  end
end
