class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.text :suggestion
      t.integer :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
