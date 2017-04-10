class AddIndexToTaskTypes < ActiveRecord::Migration
  def change
    add_index :task_types, :name, unique: true
  end
end
