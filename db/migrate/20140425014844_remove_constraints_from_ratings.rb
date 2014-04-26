class RemoveConstraintsFromRatings < ActiveRecord::Migration
  def up
    change_column :ratings, :grouping, :string, null: true
    change_column :ratings, :rank, :integer, null: true
    change_column :ratings, :score, :float, null: true
  end

  def down
    change_column :ratings, :grouping, :string, null: false
    change_column :ratings, :rank, :integer, null: false
    change_column :ratings, :score, :float, null: false
  end
end
