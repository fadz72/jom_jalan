class Adventure < ActiveRecord::Base
  belongs_to :user

  def self.search(search)
  	if search
  		where (["destination LIKE ?", "%#{search}%"])
  		# where (["destination LIKE ?", "%#{search}%"]) and 
  		# where (["time LIKE ?", "%#{search}%"])
  	else
  		 all
  	end
  end 

end
