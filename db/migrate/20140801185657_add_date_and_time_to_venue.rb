class AddDateAndTimeToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :date, :date
    add_column :venues, :time, :time
  end
end
