# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Add default task type "task"
task_type = TaskType.new(name:"task")
task_type.save

#Add default task type "meeting"
task_type = TaskType.new(name:"meeting")
task_type.save

#Add default task type "support"
task_type = TaskType.new(name:"support")
task_type.save

#Add default task type "private"
task_type = TaskType.new(name:"private")
task_type.save

#Add default task status "in progress"
task_status = TaskStatus.new(name:"in progress")
task_status.save

#Add default task status "done"
task_status = TaskStatus.new(name:"done")
task_status.save
