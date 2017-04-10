require 'test_helper'

class UserTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	 @user_task = UserTask.new(task_id:1,user_id:1)
  end

  test "usertask task id should be valid" do
  	@user_task.user_id=nil
  	assert_not @user_task.valid?
  end

  test "usertask user id should be valid" do
	@user_task.task_id=nil
  	assert_not @user_task.valid?
  end
end

