class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :destination
      t.string :time
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
