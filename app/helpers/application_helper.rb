module ApplicationHelper
	def avatar_url(user)
		#gravatar_id = Digest::MD5::hexdigest(user.email).downcase
		if user.image
			user.image
		else
			"default-img.png"
		 	# "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
		end	
	end

	def resource_name
	  :user
	end

	def resource
	  @resource ||= User.new
	end

	def devise_mapping
	  @devise_mapping ||= Devise.mappings[:user]
	end

	def date_field(form, method, model)
  		form.text_field(method,
		                         :size => 14,
		                         :maxlength => 10,
		                         :placeholder => "DD-MM-YYYY",
		                         :class => 'format-d-m-y divider-slash split-date',
		                         :value => (model.send(method).nil? ? '' :model.send(method))
                       )
	end
	
	# def current_url(overwrite={})
	#   url_for :only_path => false, :params => params.merge(overwrite)
	# end

end
