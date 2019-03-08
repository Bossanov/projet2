
class AddProfileReferenceToMessages < ActiveRecord::Migration[5.1]
  def change
    add_reference :messages, :profile, foreign_key: true, index: true
  end
end

