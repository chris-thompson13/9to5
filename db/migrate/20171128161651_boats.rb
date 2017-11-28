class Boats < ActiveRecord::Migration[5.1]
    def change
  create_table :boats do |t|
    t.string :name
   t.integer :amount
   t.string :location
    t.timestamps
  end
end
end
