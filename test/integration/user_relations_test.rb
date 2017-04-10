
require 'test_helper'

class UsersRelationsTest < ActionDispatch::IntegrationTest

	def setup
		@user = User.new(team_id:"X3", user_id:"Y3",user_name:"Kedar",team_domain:"radev")
	end

	test "user should have no tasks" do		
		assert_equal @user.tasks.size, 0
	end

	test "user should have a task" do
		@user.save
		assert @user.tasks.size, 0
		
		user_task = user_tasks(:user_task_1)
		user_task.user_id = @user.id
		user_task.save
		assert @user.tasks.size, 1
	end

end