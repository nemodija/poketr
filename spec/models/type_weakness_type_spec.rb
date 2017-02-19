# == Schema Information
#
# Table name: type_weakness_types
#
#  id               :integer          not null, primary key
#  type_id          :integer          not null
#  weakness_type_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe TypeWeaknessType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
