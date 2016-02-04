class Search < ActiveRecord::Base

	def search_adventures

		adventures = Adventure.all 

		adventures = adventures.where(["destination LIKE ?", "%#{country}%"]) if country.present?
		adventures = adventures.where(["time LIKE ?", time]) if time.present?
		adventures = adventures.where(["fullname LIKE ?", fullname]) if fullname.present? 

		return adventures 

	end


end
