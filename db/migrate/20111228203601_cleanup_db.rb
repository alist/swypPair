class CleanupDb < ActiveRecord::Migration
  def change
	  remove_column :swyp_outs, "when"
	  remove_column :swyp_ins, "when"
	  add_column :swyp_outs, :swypToken, :string
	  add_column :swyp_ins, :swypToken, :string
  end
end
