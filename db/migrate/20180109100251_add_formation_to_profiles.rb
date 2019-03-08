class AddFormationToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :formation, :string
  end
end
