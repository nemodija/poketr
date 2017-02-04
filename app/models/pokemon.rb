class Pokemon < ApplicationRecord
  belongs_to :type
  belongs_to :ability
  belongs_to :mega_effect
end
