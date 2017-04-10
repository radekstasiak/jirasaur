require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@task = Task.new(name: "JIRA-123",task_status_id:1,task_type_id:1)
  end


  test "task  name should be valid" do
  	@task.name=""
    assert_not @task.valid?
  end

  test "task type id should be valid" do
  	@task.task_type_id=nil
    assert_not @task.valid?
  end

    test "task status id should be valid" do
  	@task.task_status_id=nil
    assert_not @task.valid?
  end
end
