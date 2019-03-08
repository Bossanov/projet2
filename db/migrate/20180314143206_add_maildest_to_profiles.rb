class AddMaildestToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :maildest, :string

  end
end
