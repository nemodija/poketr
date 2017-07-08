# == Schema Information
#
# Table name: abilities
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  note       :string(255)
#  code       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ability < ApplicationRecord
  has_many :pokemon_abilities
  has_many :pokemons, through: :pokemon_abilities

  has_many :default_pokemon_abilities, -> { default_ability }, :class_name => 'PokemonAbility'
  has_many :default_pokemons, through: :default_pokemon_abilities, :source => :pokemon

  has_many :changeable_pokemon_abilities, -> { changeable_abilities }, :class_name => 'PokemonAbility'
  has_many :changeable_pokemons, through: :changeable_pokemon_abilities, :source => :pokemon
end
