class AddLanguageIdToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :language_id, :integer
  end
end
