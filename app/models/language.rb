# == Schema Information
#
# Table name: languages
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Language < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :name
  
  has_many :skills
  has_many :users, :through => :skills
end
