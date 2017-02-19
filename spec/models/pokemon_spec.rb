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

require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
