class ChangeExercisesNameToActivity < ActiveRecord::Migration
  def change
    rename_column :exercises, :name, :activity
  end
end
