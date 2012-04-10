class Skill < ActiveRecord::Base
  attr_accessible :level
  
  validates_presence_of :level
  validates_inclusion_of :level, :in => 0..5
  
  belongs_to :user
  belongs_to :language
end
