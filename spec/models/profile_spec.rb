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

require 'spec_helper'

describe Profile do
  pending "add some examples to (or delete) #{__FILE__}"
end
