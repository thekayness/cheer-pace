class CheersController < ApplicationController
	def new
		@cheer = cheer.new
	end

	def create
		@cheer = Cheer.create(cheers_params)
	end

	def destroy
	end

	private
	def cheers_params
		params.require(:cheer).permit(:content, :course_id, :user_id)
	end

end