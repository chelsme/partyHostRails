class RenameTaskTaskToAction < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :task, :action
  end
end
