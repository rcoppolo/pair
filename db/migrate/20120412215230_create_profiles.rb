class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :rating
      t.string :github

      t.timestamps
    end
  end
end
