class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.integer :trainer_id

      t.datetime :start_time
      t.timestamps
    end
  end
end
