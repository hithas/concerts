class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
