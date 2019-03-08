class ChangeNameToAskForRdv < ActiveRecord::Migration[5.1]
  def change
    rename_table :ask_for_rdvs, :meeting
  end
end
