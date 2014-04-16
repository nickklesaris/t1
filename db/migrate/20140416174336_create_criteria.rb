class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.string :name, null: false
      t.text :description
      t.timestamps
    end
  end
end
