class PokemonAbility < ApplicationRecord
  belongs_to :pokemon
  belongs_to :ability

  scope :default_ability, -> { where(:default => true) }
  scope :changeable_abilities, -> { where(:default => false) }
end
