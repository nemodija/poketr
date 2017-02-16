class TypeStrengthType < ApplicationRecord
  belongs_to :type
  belongs_to :strength_type, class_name: 'Type'
end
