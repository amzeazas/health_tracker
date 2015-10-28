class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.integer :calories, null: false

      t.timestamps null: false
    end

    add_index :foods, :name, unique: true
  end
end
