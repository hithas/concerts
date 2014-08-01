class CreateBandToVenues < ActiveRecord::Migration
  def change
    create_table :band_to_venues do |t|
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
