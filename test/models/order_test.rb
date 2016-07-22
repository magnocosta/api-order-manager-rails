# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  number     :string
#  reference  :string
#  status     :string
#  notes      :text
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
