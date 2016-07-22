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

FactoryGirl.define do
  factory :transaction do
    external_id "MyString"
    mount 1
    type ""
    authorization_code "MyString"
    card_brand "MyString"
    card_bin "MyString"
    card_lat "MyString"
  end
end
