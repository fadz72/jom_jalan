class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		# @age = User.calculate_age(@user.birthday)
	end
	
end