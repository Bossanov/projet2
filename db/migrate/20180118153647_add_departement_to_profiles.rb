class AddDepartementToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :departement, :string
  end
end
