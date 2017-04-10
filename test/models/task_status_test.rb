require 'test_helper'

class TaskStatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@status = TaskStatus.new(name: "In progress")
  end


  test "task status name should not be empty" do
  	@status.name=""
    assert_not @status.valid?
  end

  test "task status name should be unique" do
    @status.name=task_statuses(:inprogress).name
    assert_not   @status.valid?
  end
end
