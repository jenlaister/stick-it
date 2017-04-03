class ChangeDefaultForRoutinesStreak < ActiveRecord::Migration[5.0]
  def change
    change_column :routines, :streak, :integer, :default => 0
  end
end
