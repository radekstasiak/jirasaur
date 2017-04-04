
require 'test_helper'

class UsersSetupTest < ActionDispatch::IntegrationTest

	def setup
		ENV['SLACK_TOKEN']="aaa"
		@user = users(:radek)
	end

	test "request hould be authenticated with correct token" do
		post "/api/v1/report", token:"",team_id:3, user_id:3,user_name:"Kedar",team_domain:"radev"
		assert_equal response.body.to_s, "{\"status\":\"unauthorized\"}"
	end

	test "successfuly create new user" do 
		assert_equal User.all.size, 1
		post "/api/v1/report", token:"aaa",team_id:3, user_id:3,user_name:"Kedar",team_domain:"radev"
		assert_equal User.all.size, 2
	end

	test "successfuly retrieve existing user" do
		assert_equal User.all.size, 1
		post "/api/v1/report", token:"aaa",team_id:@user.team_id, user_id:@user.user_id,user_name:@user.user_name,team_domain:@user.team_domain
		assert_equal User.all.size, 1
	end

end