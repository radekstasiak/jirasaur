class ApiController < BaseApiController
	
	before_filter :parse_request, :authenticate_token,:set_user

	def process_request
		render :json => {:user => @user.user_name,:text =>params[:text]}
	end

	def user_params
      params.permit(:team_id, :team_domain, :user_id,
                                   :user_name)
  	end

  	def set_user
		@user = User.find_by_user_id(user_params[:user_id])
		if(@user==nil)
			@user = User.create(user_params) 
		end
  	end

end