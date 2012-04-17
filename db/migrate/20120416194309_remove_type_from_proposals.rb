class RemoveTypeFromProposals < ActiveRecord::Migration
  def change
    remove_column :proposals, :type
  end
end
