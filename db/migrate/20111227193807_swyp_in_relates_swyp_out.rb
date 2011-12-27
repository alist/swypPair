class SwypInRelatesSwypOut < ActiveRecord::Migration
  def change
	add_column :swyp_outs, :swyp_in_id, :integer
  end
end
