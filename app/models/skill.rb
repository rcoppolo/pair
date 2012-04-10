# == Schema Information
#
# Table name: skills
#
#  id          :integer         not null, primary key
#  level       :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  user_id     :integer
#  language_id :integer
#

class Skill < ActiveRecord::Base
  attr_accessible :level
  
  validates_presence_of :level
  validates_inclusion_of :level, :in => 0..5
  
  belongs_to :user
  belongs_to :language
end
