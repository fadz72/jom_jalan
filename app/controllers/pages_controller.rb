class PagesController < ApplicationController
  def home
	
  end

  def index
  	user = User.find_by(id: current_user.id)
  end

end
