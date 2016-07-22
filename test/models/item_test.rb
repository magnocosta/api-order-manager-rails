# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  sku        :string
#  unit_price :integer
#  quantity   :integer
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
