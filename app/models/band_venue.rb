class BandVenue < ActiveRecord::Base
  belongs_to :band
  belongs_to :venue
end
