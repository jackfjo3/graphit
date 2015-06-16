class FixColumnName < ActiveRecord::Migration
  change_table :trackables do |t|
    t.rename :type, :kind
  end
end
