class CreateSwypOuts < ActiveRecord::Migration
  def change
    create_table :swyp_outs do |t|
      t.datetime :when
      t.string :where
      t.integer :velocity
      t.string :address
      t.integer :port
      t.string :id
      t.binary :publicKey

      t.timestamps
    end
  end
end
