class Attendee < ActiveRecord::Base
  has_many :attendee_venue
end
