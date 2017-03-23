class CreateHabits < ActiveRecord::Migration[5.0]
  def change
    create_table :habits do |t|
      t.string :routine

      t.timestamps
    end
  end
end
