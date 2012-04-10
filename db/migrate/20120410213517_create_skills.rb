class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :level

      t.timestamps
    end
  end
end
