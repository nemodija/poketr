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

class TypeWeaknessType < ApplicationRecord
  belongs_to :type
  belongs_to :weakness_type, class_name: 'Type'
end
