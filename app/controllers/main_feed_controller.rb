class MainFeedController < ApplicationController
	def index
		@courses = Course.order_by_inactivity
	end
end