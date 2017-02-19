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

class TypeStrengthType < ApplicationRecord
  belongs_to :type
  belongs_to :strength_type, class_name: 'Type'
end
