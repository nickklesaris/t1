class AddIndexesToRatings < ActiveRecord::Migration
  def up
    add_index :ratings, :item_id
    add_index :ratings, :criterion_id
  end

  def down
    remove_index :ratings, :item_id
    remove_index :ratings, :criterion_id
  end
end
