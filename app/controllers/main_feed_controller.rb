class MainFeedController < ApplicationController
	def index
		@courses = Course.all
	end
end