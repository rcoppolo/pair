class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.integer :proposer
      t.integer :proposee
      t.boolean :accepted

      t.timestamps
    end
  end
end
