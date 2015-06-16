class AddStuffToGraph < ActiveRecord::Migration
  def change
    add_column :graphs, :user_id,  :integer
    add_column :graphs, :name,     :string
  end
end
