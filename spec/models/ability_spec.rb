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

require 'rails_helper'

RSpec.describe Ability, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
