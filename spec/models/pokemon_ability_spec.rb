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

require 'rails_helper'

RSpec.describe PokemonAbility, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
