class AddStuffToTrackables < ActiveRecord::Migration
  def change
    add_column :trackables, :graph_id,  :integer
    add_column :trackables, :name,      :string
    add_column :trackables, :type,      :string
    add_column :trackables, :value,     :integer
    add_column :trackables, :boolean,   :boolean
    add_column :trackables, :min,       :integer
    add_column :trackables, :max,       :integer
    add_column :trackables, :note,      :text
  end
end
