
require 'test_helper'

class TaskRelationsTest < ActionDispatch::IntegrationTest

	def setup
		@task = Task.new(name:"buffer",task_status_id:1,task_type_id:1)
	end

	test "task should have no users" do		
		assert_equal @task.users.size, 0
	end

	test "task should have a user" do
		@task.save
		assert @task.users.size, 0
		
		user_task = user_tasks(:user_task_1)
		user_task.task_id = @task.id
		user_task.save
		assert @task.users.size, 1
	end

end