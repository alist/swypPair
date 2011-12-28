class CreateSwypIns < ActiveRecord::Migration
  def change
    create_table :swyp_ins do |t|
      t.datetime :when
      t.string :where
      t.integer :velocity
      t.string :address
      t.integer :port
      t.binary :publicKey

      t.timestamps
    end
  end
end
