# == Schema Information
#
# Table name: locations
#
#  id         :integer         not null, primary key
#  zipcode    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Location < ActiveRecord::Base
  attr_accessible :zipcode
  
  validates_presence_of :zipcode
 
  validates_length_of :zipcode, :is => 5
  
  has_many :users
end
