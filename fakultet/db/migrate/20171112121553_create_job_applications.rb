class CreateJobApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :job_applications do |t|
      t.string :name
      t.string :surname
      t.integer :JBMG
      t.date :date_of_birth
      t.string :place_of_birth
      t.integer :telephone_number
      t.string :email
      t.string :gender
      t.text :CV
      t.text :motivation_letter
      t.references :job_advertisements, foreign_key: true

      t.timestamps
    end
  end
end
