class Pokemon < ApplicationRecord
  belongs_to :type
  has_many :pokemon_abilities
  has_many :abilities, through: :pokemon_abilities

  has_one :default_pokemon_ability, -> { default_ability }, :class_name => 'PokemonAbility'
  has_one :default_ability, through: :default_pokemon_ability, :source => :ability

  has_many :changeable_pokemon_abilities, -> { changeable_abilities }, :class_name => 'PokemonAbility'
  has_many :changeable_abilities, through: :changeable_pokemon_abilities, :source => :ability

  has_many :mega_effects
 
  def mega_evolution?
    self.mega_effects.size > 0
  end
end
