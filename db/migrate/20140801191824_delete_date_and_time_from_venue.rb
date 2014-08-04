class DeleteDateAndTimeFromVenue < ActiveRecord::Migration
  def change
    remove_column :venues, :date, :date
    remove_column :venues, :time, :time
  end
end
