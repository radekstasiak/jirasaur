require 'test_helper'

class TaskStatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@status = TaskStatus.new(name: "In progress")
  end


  test "task status name should be valid" do
  	@status.name=""
    assert_not @status.valid?
  end
end
