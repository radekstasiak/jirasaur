class AddIndexToTasks < ActiveRecord::Migration
  def change
    add_index :tasks, :name, unique: true
  end
end
