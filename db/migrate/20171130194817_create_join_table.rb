class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :jobs, :boats do |t|
      t.index [:job_id, :boat_id]
      t.index [:boat_id, :job_id]
    end
  end
end
