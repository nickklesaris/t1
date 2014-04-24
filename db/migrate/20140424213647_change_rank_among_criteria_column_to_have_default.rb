class ChangeRankAmongCriteriaColumnToHaveDefault < ActiveRecord::Migration
  def up
    change_column :criteria, :rank_among_criteria, :integer, :default => 0
  end

  def down
    change_column :criteria, :rank_among_criteria, :integer
  end
end
