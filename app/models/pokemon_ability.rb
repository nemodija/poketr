# == Schema Information
#
# Table name: pokemon_abilities
#
#  id         :integer          not null, primary key
#  pokemon_id :integer          not null
#  ability_id :integer          not null
#  default    :boolean          default("0"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PokemonAbility < ApplicationRecord
  belongs_to :pokemon
  belongs_to :ability

  scope :default_ability, -> { where(:default => true) }
  scope :changeable_abilities, -> { where(:default => false) }
end
