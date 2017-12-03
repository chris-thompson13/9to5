class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.string :destination
      t.string :origin
      t.integer :cost
      t.integer :amount
      t.integer :user_id


      t.timestamps
    end
  end
end
