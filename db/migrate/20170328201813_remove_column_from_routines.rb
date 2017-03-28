class RemoveColumnFromRoutines < ActiveRecord::Migration[5.0]
  def change
    remove_column :routines, :note
  end
end
