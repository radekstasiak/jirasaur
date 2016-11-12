class ApiController < BaseApiController


	def sort_params
		@type = params[:text]
		render :json => {:type => @type}
	end

end