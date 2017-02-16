class Type < ApplicationRecord

  has_many :type_strength_types
  has_many :strength_types, through: :type_strength_types
  has_many :type_weakness_types
  has_many :weakness_types, through: :type_weakness_types

  class << self
    Type.all.pluck(:code).compact.each do |c|
      define_method "#{c.downcase}" do
        self.find_by_code c
      end
    end
  end

  Type.all.pluck(:code).compact.each do |c|
    define_method "#{c.downcase}?" do
      c == code
    end
  end
end
