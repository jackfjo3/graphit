class AddTrackableIdToPoint < ActiveRecord::Migration
  def change
    add_column :points, :trackable_id, :integer
  end
end
