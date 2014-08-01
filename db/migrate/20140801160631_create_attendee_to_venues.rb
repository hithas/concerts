class CreateAttendeeToVenues < ActiveRecord::Migration
  def change
    create_table :attendee_to_venues do |t|
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
