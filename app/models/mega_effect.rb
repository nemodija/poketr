# == Schema Information
#
# Table name: mega_effects
#
#  id            :integer          not null, primary key
#  name          :string(255)      not null
#  note          :string(255)
#  mega_skill_up :integer          not null
#  pokemon_id    :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class MegaEffect < ApplicationRecord
  belongs_to :pokemon
end
