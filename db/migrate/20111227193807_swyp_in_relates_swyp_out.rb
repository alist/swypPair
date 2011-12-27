class SwypInRelatesSwypOut < ActiveRecord::Migration
  def change
	add_column :swyp_outs, :swypIn_id, :integer
  end
end
