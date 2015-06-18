class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :graph_id

      t.timestamps null: false
    end
  end
end
