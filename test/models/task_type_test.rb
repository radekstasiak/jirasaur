require 'test_helper'

class TaskTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@type = TaskType.new(name: "task")
  end


  test "task type name should be valid" do
  	@type.name=""
    assert_not @type.valid?
  end
end
