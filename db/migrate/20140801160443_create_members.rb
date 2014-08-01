class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :age
      t.string :picture
      t.integer :band_id

      t.timestamps
    end
  end
end
