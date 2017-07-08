# == Schema Information
#
# Table name: type_strength_types
#
#  id               :integer          not null, primary key
#  type_id          :integer          not null
#  strength_type_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :type_strength_type do
  end
end
