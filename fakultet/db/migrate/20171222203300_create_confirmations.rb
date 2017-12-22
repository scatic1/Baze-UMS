class CreateConfirmations < ActiveRecord::Migration[5.1]
  def change
    create_table :confirmations do |t|
      t.string :svrha
      t.string :ime
      t.string :prezime

      t.timestamps
    end
  end
end
