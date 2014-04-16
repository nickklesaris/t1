class AddRankToCriteriaAndIndex < ActiveRecord::Migration
  def up
    add_column :criteria, :rank_among_criteria, :integer, null: false
    add_column :criteria, :evaluation_session_id, :integer, null: false
    add_index :criteria, :evaluation_session_id
  end

  def down
    remove_index :criteria, :evaluation_session_id
    remove_column :criteria, :rank_among_criteria
    remove_column :criteria, :evaluation_session_id
  end
end
