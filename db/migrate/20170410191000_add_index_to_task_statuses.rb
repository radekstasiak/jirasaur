class AddIndexToTaskStatuses < ActiveRecord::Migration
  def change
    add_index :task_statuses, :name, unique: true
  end
end
