require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user = User.new(team_id:2, user_id:2,user_name:"Kedar",team_domain:"radev")
  end

  test "should be valid" do
  	assert @user.valid?
  end

  test "user name should be present" do
  	@user.user_name=""
  	assert_not @user.valid?
  end

  test "user id should be present" do
  	@user.user_id=nil
  	assert_not @user.valid?
  end

  test "user id should be unique" do
  	@user.user_id=1
  	assert_not @user.valid?
  end

  test "team id should be present" do
  	@user.team_id=nil
  	assert_not @user.valid?
  end

  test "team domain should be present" do
  	@user.team_domain=""
  	assert_not @user.valid?
  end
end
