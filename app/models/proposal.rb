class Proposal < ActiveRecord::Base
  attr_accessible :accepted, :proposee, :proposer
end
