# == Schema Information
#
# Table name: transactions
#
#  id                 :integer          not null, primary key
#  external_id        :string
#  amount             :integer
#  type               :string
#  authorization_code :string
#  card_brand         :string
#  card_bin           :string
#  card_last          :string
#  order_id           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
