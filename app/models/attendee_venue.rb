class AttendeeVenue < ActiveRecord::Base
  belongs_to :attendee
  belongs_to :venue
end
