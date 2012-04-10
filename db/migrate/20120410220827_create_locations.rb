class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :zipcode

      t.timestamps
    end
  end
end
