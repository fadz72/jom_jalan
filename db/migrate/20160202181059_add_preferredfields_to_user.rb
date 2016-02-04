class AddPreferredfieldsToUser < ActiveRecord::Migration
  	def change
	    add_column :users, :preferred_country, :string
	    add_column :users, :preferred_city, :string
	    add_column :users, :preferred_time, :date
	end
end