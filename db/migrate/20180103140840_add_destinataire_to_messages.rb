class AddDestinataireToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :destinataire, :string
  end
end
