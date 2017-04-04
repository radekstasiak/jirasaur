class BaseApiController < ApplicationController

    before_filter :parse_request, :authenticate_token


    def authenticate_token
    	if @token != ENV['SLACK_TOKEN']
            render :json => {:status => :unauthorized}
    	end
    end

    def parse_request
    	@token = params[:token]
    end
    

end
