class CreateEvaluationSessions < ActiveRecord::Migration
  def change
    create_table :evaluation_sessions do |t|
      t.string :name, null: false
      t.text :description
      t.string :item_type, null: false
      t.timestamps
    end
  end
end
