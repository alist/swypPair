class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.string :email
      t.string :api_key
      t.boolean :revoked, :default => false

      t.timestamps
    end
  end
end
