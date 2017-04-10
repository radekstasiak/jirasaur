class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :task_type, index: true
      t.belongs_to :task_status, index: true
      t.string :name, null: false, unique: true
      t.timestamps null: false
    end
  end
end
