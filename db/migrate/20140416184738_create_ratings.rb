class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :grouping, null: false
      t.integer :rank, null: false
      t.float :score, null: false
      t.integer :item_id, null: false
      t.integer :criterion_id, null: false
      t.timestamps
    end
  end
end
