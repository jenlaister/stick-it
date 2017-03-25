class CreateProgresses < ActiveRecord::Migration[5.0]
  def change
    create_table :progresses do |t|
      t.integer :routine_id
      t.integer :user_id

      t.timestamps
    end
  end
end
