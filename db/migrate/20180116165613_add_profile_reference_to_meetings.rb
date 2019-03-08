class AddProfileReferenceToMeetings < ActiveRecord::Migration[5.1]
  def change
    add_reference :meeting, :profile, foreign_key: true, index: true
  end
end
