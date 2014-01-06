class ChangePriceToMaximumPrice < ActiveRecord::Migration
  def up
  	rename_column :filters, :price, :maximum_price
  end

  def down
  end
end
