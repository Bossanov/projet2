class AddBiographieToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :biographie, :text
  end
end
