class RemoveColumnToAbility < ActiveRecord::Migration[5.0]
  def change
    remove_column :abilities, :code, :string
  end
end
