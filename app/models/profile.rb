# == Schema Information
#
# Table name: profiles
#
#  id         :integer         not null, primary key
#  rating     :integer
#  github     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  user_id    :integer
#

class Profile < ActiveRecord::Base
  attr_accessible :github
  
  belongs_to :user
  
  validates_length_of :github, :maximum => 50
  
  ATTR_METHODS = [:rating, :rating=, :github, :github=]
  
  validates_inclusion_of :rating, :in => [nil,0,1,2,3,4,5]
end
