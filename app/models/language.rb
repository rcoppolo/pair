class Language < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :name
  
  has_many :skills
  has_many :users, :through => :skills
end