
require 'test_helper'

class UsersSetupTest < ActionDispatch::IntegrationTest

	def setup
		ENV['SLACK_TOKEN']="aaa"
		@user = users(:radek)
		@user2 = User.new(team_id:"X3", user_id:"Y3",user_name:"Kedar",team_domain:"radev")
	end

	test "request hould be authenticated with correct token" do
		post "/api/v1/report", token:"",team_id:@user2.team_id, user_id:@user2.user_id,user_name:@user2.user_name,team_domain:@user2.team_domain
		assert_equal response.body.to_s, "{\"status\":\"unauthorized\"}"
	end

	test "successfuly create new user" do 
		assert_equal User.all.size, 1
		post "/api/v1/report", token:"aaa",team_id:@user2.team_id, user_id:@user2.user_id,user_name:@user2.user_name,team_domain:@user2.team_domain
		assert_equal User.all.size, 2
	end

	test "successfuly retrieve existing user" do
		assert_equal User.all.size, 1
		user =  User.all.at(0)
		post "/api/v1/report", token:"aaa",team_id:@user.team_id, user_id:@user.user_id,user_name:@user.user_name,team_domain:@user.team_domain		
		assert_equal User.all.size, 1
	end

end