class ChangeTrackableColumnName < ActiveRecord::Migration
  def change
    rename_column :trackables, :graph_id, :entry_id
  end
end
