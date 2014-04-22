class AddIndexToItemTable < ActiveRecord::Migration
  def up
    add_column :items, :evaluation_session_id, :integer, null: false
    add_index  :items, :evaluation_session_id
  end

  def down
    remove_index :items, :evaluation_session_id
    remove_column :items, :evaluation_session_id
  end
end
