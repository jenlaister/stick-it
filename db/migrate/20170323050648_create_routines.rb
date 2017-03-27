class CreateRoutines < ActiveRecord::Migration[5.0]
  def change
    create_table :routines do |t|
      t.integer :user_id
      t.integer :habit_id
      t.string :note

      t.timestamps
    end
  end
end
