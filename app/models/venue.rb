class Venue < ActiveRecord::Base
  has_many :band_venue
  has_many :attendee_venue
end
