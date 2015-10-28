class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :exercise_id
      t.integer :user_id
      t.integer :duration
      t.integer :total_calories_burned

      t.timestamps null: false
    end
  end
end
