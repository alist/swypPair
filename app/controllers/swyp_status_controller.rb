class SwypStatusController < ApplicationController
	layout nil
	
	def index
		render :status => 400
	end
	
	#GET /swyp_status/xyz.json
	def show
		@swyp = SwypOut.find(params[:id])
	end
	
end
