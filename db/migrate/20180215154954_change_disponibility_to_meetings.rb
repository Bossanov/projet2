class ChangeDisponibilityToMeetings < ActiveRecord::Migration[5.1]
  def change
    change_column :meetings, :disponibility, :text
  end
end
