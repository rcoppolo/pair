class RenameForeignKeysOnProposal < ActiveRecord::Migration
  def change
    rename_column :proposals, :proposee, :proposee_id
    rename_column :proposals, :proposer, :proposer_id
  end
end
