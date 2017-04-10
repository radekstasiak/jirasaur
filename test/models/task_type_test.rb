require 'test_helper'

class TaskTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@type = TaskType.new(name: "task")
  end


  test "task type name should not be empty" do
  	@type.name=""
    assert_not @type.valid?
  end

  test "task type name should be unique" do
    @type.name=task_types(:task).name
    assert_not  @type.valid?
  end
end
