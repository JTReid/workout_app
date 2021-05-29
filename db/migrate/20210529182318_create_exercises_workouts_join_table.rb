class CreateExercisesWorkoutsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :exercises, :workouts
  end
end
