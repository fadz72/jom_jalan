class RegistrationsController < Devise::RegistrationsController
	
	def update
		super
	end

	protected
		def update_resource(resource, params)
			resource.update_without_password(params)
		end

	# private

	#   def sign_up_params
	#     params.require(:user).permit(:fullname, :email, :password)
	#   end

	#   def account_update_params
	#     params.require(:user).permit(:fullname, :birthday, :gender, :description)
	#   end
end