class AddDeveloperIdToSwypIn < ActiveRecord::Migration
  def change
    add_column :swyp_ins, :developer_id, :integer
  end
end
