# == Schema Information
#
# Table name: types
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  code       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :type do
  end
end
