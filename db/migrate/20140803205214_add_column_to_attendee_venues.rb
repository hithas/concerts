class AddColumnToAttendeeVenues < ActiveRecord::Migration
  def change
    add_column :attendee_venues, :bv_id, :integer
  end
end
