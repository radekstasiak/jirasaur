
require 'test_helper'

class TaskStatusesRelationsTest < ActionDispatch::IntegrationTest

	def setup
		@task_status = TaskStatus.new(name:"test")
	end

	test "task status should have no tasks" do		
		assert_equal @task_status.tasks.size, 0
	end

	test "task status should have a task" do
		@task_status.save
		assert @task_status.tasks.size, 0
		
		task = tasks(:jira)
		task.task_status_id = @task_status.id
		task.save
		assert @task_status.tasks.size, 1
	end

end