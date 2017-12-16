class CreateExamApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :exam_applications do |t|
      t.boolean :apply
      t.references :exam, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
