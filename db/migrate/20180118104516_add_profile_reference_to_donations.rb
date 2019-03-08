class AddProfileReferenceToDonations < ActiveRecord::Migration[5.1]
  def change
    add_reference :donations, :profile, foreign_key: true, index: true
  end
end
