class ChangePreferredtimeToUser < ActiveRecord::Migration
  	def change
	    change_column :users, :preferred_time, :string
	end
end