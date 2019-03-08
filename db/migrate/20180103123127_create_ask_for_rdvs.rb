class CreateAskForRdvs < ActiveRecord::Migration[5.1]
  def change
    create_table :ask_for_rdvs do |t|
      t.string :reason
      t.string :disponibility

      t.timestamps
    end
  end
end
