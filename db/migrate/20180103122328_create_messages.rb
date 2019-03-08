class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :message_title
      t.text :message_content
      t.string :message_photo

      t.timestamps
    end
  end
end
