class TypeWeaknessType < ApplicationRecord
  belongs_to :type
  belongs_to :weakness_type, class_name: 'Type'
end
