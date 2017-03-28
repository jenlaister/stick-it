class AddColumnToRoutines < ActiveRecord::Migration[5.0]
  def change
    add_column :routines, :streak, :integer
  end
end
