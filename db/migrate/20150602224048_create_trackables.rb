class CreateTrackables < ActiveRecord::Migration
  def change
    create_table :trackables do |t|

      t.timestamps null: false
    end
  end
end
