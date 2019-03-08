class AddDestinataireToMeetings < ActiveRecord::Migration[5.1]
    def change
    add_column :meetings, :destinataire, :string
  end
end
