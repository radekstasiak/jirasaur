class CreateTaskStatuses < ActiveRecord::Migration
  def change
    create_table :task_statuses do |t|      
      t.string :name, null: false, unique: true
      t.timestamps null: false
    end
  end
end
