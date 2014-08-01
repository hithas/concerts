class CreateAttendeeVenues < ActiveRecord::Migration
  def change
    create_table :attendee_venues do |t|
      t.integer :attendee_id
      t.integer :venue_id
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
