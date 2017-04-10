
require 'test_helper'

class TaskTypesesRelationsTest < ActionDispatch::IntegrationTest

	def setup
		@task_type = TaskType.new(name:"buffer")
	end

	test "task type should have no tasks" do		
		assert_equal @task_type.tasks.size, 0
	end

	test "task type should have a task" do
		@task_type.save
		assert @task_type.tasks.size, 0
		
		task = tasks(:jira)
		task.task_type_id = @task_type.id
		task.save
		assert @task_type.tasks.size, 1
	end

end