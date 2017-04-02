class ApiController < BaseApiController
before_filter :parse_request, :authenticate_token

	def sort_params
		@type = params[:text]
		render :json => {:type => @type}
	end

end