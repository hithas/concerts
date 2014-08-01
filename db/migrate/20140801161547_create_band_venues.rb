class CreateBandVenues < ActiveRecord::Migration
  def change
    create_table :band_venues do |t|
      t.integer :band_id
      t.integer :venue_id
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
