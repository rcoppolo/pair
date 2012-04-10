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

require 'spec_helper'

describe Skill do
  pending "add some examples to (or delete) #{__FILE__}"
end
