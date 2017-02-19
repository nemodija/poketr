# == Schema Information
#
# Table name: type_weakness_types
#
#  id               :integer          not null, primary key
#  type_id          :integer          not null
#  weakness_type_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :type_weakness_type do
  end
end
