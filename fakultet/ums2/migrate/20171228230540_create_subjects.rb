class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :title
      t.integer :ECTS
      t.integer :cycle
      t.integer :semester
      t.string :subject_type
    end
  end
end
