# == Schema Information
#
# Table name: pokemons
#
#  id           :integer          not null, primary key
#  dex          :integer          not null
#  name         :string(255)      not null
#  series       :string(255)
#  attack       :integer          not null
#  max_level_up :integer          default("0"), not null
#  type_id      :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

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

  def self.to_csv
    CSV.generate(encoding: Encoding::SJIS) do |csv|
      csv << csv_column_names
      all.each do |p|
        csv << p.csv_column_values
      end
    end
  end

  def self.csv_column_names
    ['ばんごう', 'なまえ', '', 'タイプ', '能力']
  end

  def csv_column_values
    [dex, name, series, type.name, default_ability.name]
  end
end
