class ChangeNameToMeeting < ActiveRecord::Migration[5.1]
  def change
    rename_table :meeting, :meetings
  end
end
