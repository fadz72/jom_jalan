
class UsersController < ApplicationController

	def index
		#@user = Adventure.find_by(id: current_user.id)
		@users = User.all

	end

	def show
		@user = User.find(params[:id])
		@adventures = Adventure.where(user_id: current_user.id)

		# @age = User.calculate_age(@user.birthday)
	end
	
	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to user_path, :notice => "Updated successfully."
		else
			render 'edit'
		end
	end

	def user_params
		params.require(:user).permit(:fullname, :password, :birthday, :gender, :home_country, :description, :preferred_country, :preferred_city, :preferred_time)
	end
end