class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :country
      t.string :time
      t.string :fullname

      t.timestamps null: false
    end
  end
end
