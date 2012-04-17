class Proposal < ActiveRecord::Base
  attr_accessible :proposee
  
  belongs_to :proposer, :class_name => 'User'
  belongs_to :proposee, :class_name => 'User'
  
end
