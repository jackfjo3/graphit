class AddDataToTrackables < ActiveRecord::Migration
  def change
    add_column :trackables, :data, :string
  end
end
