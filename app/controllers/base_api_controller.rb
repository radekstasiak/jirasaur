class BaseApiController < ApplicationController

    before_filter :parse_request, :authenticate_token


    def authenticate_token
    	puts ("reach here")
    	puts("token #{@token}")
    	puts("SLACK_TOKEN #{ENV['SLACK_TOKEN']}")
    	if @token != ENV['SLACK_TOKEN']
    		render nothing: true, status: :unauthorized
    	end
    end

    def parse_request
    	@token = params[:token]
    end
    

end
