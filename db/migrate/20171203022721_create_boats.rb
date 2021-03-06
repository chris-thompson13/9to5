class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :location
      t.integer :amount
      t.integer :user_id
      t.attachment :avatar

      t.timestamps
    end
  end
end
