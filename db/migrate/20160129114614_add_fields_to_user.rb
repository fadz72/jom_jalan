class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :fullname, :string
    add_column :users, :username, :string
    add_column :users, :birthday, :date
    add_column :users, :home_country, :string
    add_column :users, :description, :text
    add_column :users, :gender, :string
    add_column :users, :rating, :integer
  end
end
