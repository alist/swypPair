class AddDeveloperIdToSwypOut < ActiveRecord::Migration
  def change
    add_column :swyp_outs, :developer_id, :integer

  end
end
