class AddColumnMoyenToDonation < ActiveRecord::Migration[5.1]
  def change
    add_column :donations, :moyen, :string
  end
end
