class CreateJobApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :job_applications do |t|
      t.string :ime
      t.string :prezime
      t.integer :JMBG
      t.date :datum_rodjenja
      t.string :mjesto_rodjenja
      t.integer :telefon
      t.string :email
      t.string :spol
      t.string :cv
      t.string :motivaciono_pismo

      t.timestamps
    end
  end
end
