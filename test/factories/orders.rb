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

FactoryGirl.define do
  factory :order do
    number "MyString"
    reference "MyString"
    status "MyString"
    notes "MyText"
    price ""
  end
end
